defmodule Teiserver.Protocols.Spring do
  require Logger
  alias Regex
  alias Teiserver.Client
  alias Teiserver.Battle
  alias Teiserver.Room
  alias Teiserver.User

  @motd """
--------------------
Welcome to teiserver
--------------------
"""

#   @agreement """
# AGREEMENT --------------------
# AGREEMENT The agreement goes here
# AGREEMENT --------------------
# """

  def _send(msg, state, msg_id \\ nil) do
    _send(msg, state.socket, state.transport, msg_id)
  end

  def _send(msg, socket, transport, msg_id) do
    msg = if msg_id != "" and msg_id != nil do
      msg
      |> String.trim()
      |> String.split("\n")
      |> Enum.map(fn m -> "#{msg_id} #{m}\n" end)
      |> Enum.join("")
    else
      msg
    end

    Logger.debug("--> #{msg}")
    transport.send(socket, msg)
  end

  def welcome(socket, transport) do
    _send("TASSERVER 0.38-33-ga5f3b28 * 8201 0\n", socket, transport, nil)
  end

  def handle("\r\n", _), do: ""
  def handle(data, state) do
    ~r/^(#[0-9]+ )?([A-Z0-9]+)(.*)?$/
    |> Regex.run(data)
    |> _clean
    |> _handle(state)
  end

  def _clean(nil), do: nil
  def _clean([_, msg_id, command, data]) do
    {command, String.trim(data), String.trim(msg_id)}
  end

  def _parse(regex, string) do
    [_ | result] = regex
    |> Regex.run(string)
    result
  end

  def _handle({"MYSTATUS", data, _msg_id}, state) do
    case Regex.run(~r/([0-9]+)/, data) do
      nil ->
        Logger.debug("[command:mystatus] bad match on: #{data}")
      [_, status] ->
        # Logger.warn("[command:mystatus] status: #{status}")
        # Logger.warn("[command:mystatus] status as bin: #{status |> String.to_integer |> Integer.digits(2)}")
        status
        |> String.to_integer
        |> Integer.digits(2)
        |> Client.create_from_bits(state.client)
        |> Client.update
    end
    state
  end

  def _handle({"FRIENDLIST", _, msg_id}, state) do
    _send(do_friendlist(state.user), state, msg_id)
    state
  end

  def _handle({"FRIENDREQUESTLIST", _, msg_id}, state) do
    _send(do_friendlist_request(state.user), state, msg_id)
    state
  end

  # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#JOIN:client
  def _handle({"JOIN", data, msg_id}, state) do
    case Regex.run(~r/(\w+)(?:\t)?(\w+)?/, data) do
      [_, room_name] ->
        Room.add_user_to_room(state.user.name, room_name)
        room = Room.get_room(room_name)
        members = Enum.join(room.members, " ")
        _send("CHANNELTOPIC #{room_name} #{room.author}", state, msg_id)
        _send("CLIENTS #{room_name} #{members}", state, msg_id)

        # do_join_channel(room_name, state)

        # Join the channel
        # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#CLIENTS:server
        # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#CLIENTSFROM:server
        {:success, room_name}
      [_, _room_name, _key] ->
        # Join the channel
        {:failed, "Locked"}
      _ ->
        {:failed, "Bad details"}
    end
    state
  end

  # Special handler to allow us to test more easily, it just accepts
  # any login
  def _handle({"LI", username, msg_id}, state) do
    Logger.debug("[command:login] accepted #{username}")
    _send(do_accepted(username), state, msg_id)
    _send(do_motd(@motd), state, msg_id)

    user = case User.get_user(username) do
      nil ->
        Logger.warn("Adding user based on login, this should be replaced with registration functionality")
        User.create_user(%{
          name: username,
          country: "GB",
          userid: :random.uniform(899999) + 100000,
          lobbyid: "LuaLobby Chobby"
        })
        |> User.add_user()
      user ->
        user
    end

    client = Client.create(username, self(), state.protocol)
    |> Client.update

    User.list_users()
    |> Enum.each(fn u ->
      Logger.debug("[adduser] sent user info")
      _send(do_adduser(u), state, msg_id)
    end)

    Battle.list_battles()
    |> Enum.each(fn b ->
      Logger.debug("[battleopened] sent battle info")
      _send(do_battleopened(b), state, msg_id)
      _send(do_updatebattleinfo(b), state, msg_id)
    end)

    _send("JOINEDBATTLE 898 Testuser1\n", state, msg_id)
    _send("LOGININFOEND\n", state, msg_id)
    %{state | client: client, user: user}
  end

  # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#LOGIN:client
  # LOGIN Teifion password 0 * LuaLobby Chobby\t1993717506\td6a3ed0d7920e812\tb sp
  def _handle({"LOGIN", data, msg_id}, state) do
    response = case Regex.run(~r/^(\w+) ([a-zA-Z0-9=]+) (0) ([0-9\.\*]+) ([^\t]+)\t([^\t]+)\t([^\t]+)/, data) do
      [_, username, password, _cpu, ip, lobby, user_id, modes] ->
        _ = [username, password, ip, lobby, user_id, modes]
        {:accepted, username}
      nil ->
        {:denied, "Invalid details"}
    end

    # Password hashing for spring is:
    # :crypto.hash(:md5 , "password") |> Base.encode64()
    case response do
      {:accepted, username} ->
        Logger.debug("[command:login] accepted #{username}")
        _send(do_accepted(username), state, msg_id)
        _send(do_motd(@motd), state, msg_id)

        user = case User.get_user(username) do
          nil ->
            Logger.warn("Adding user based on login, this should be replaced with registration functionality")
            User.create_user(%{
              name: username,
              country: "GB",
              userid: :random.uniform(899999) + 100000,
              lobbyid: "LuaLobby Chobby"
            })
            |> User.add_user()
          user ->
            user
        end

        client = Client.create(username, self(), state.protocol)
        |> Client.update

        User.list_users()
        |> Enum.each(fn u ->
          Logger.debug("[adduser] sent user info")
          _send(do_adduser(u), state, msg_id)
        end)

        Battle.list_battles()
        |> Enum.each(fn b ->
          Logger.debug("[battleopened] sent battle info")
          _send(do_battleopened(b), state, msg_id)
          _send(do_updatebattleinfo(b), state, msg_id)
        end)

        _send("JOINEDBATTLE 898 Testuser1\n", state, msg_id)
        _send("LOGININFOEND\n", state, msg_id)
        %{state | client: client, user: user}
      {:denied, reason} ->
        Logger.debug("[command:login] denied with reason #{reason}")
        _send("DENIED #{reason}\n", state, msg_id)
        state
      # :agreement ->
      #   _send(@agreement, state)
      #   state
    end
  end

  def _handle({"PING", _, msg_id}, state) do
    _send("PONG\n", state, msg_id)
    state
  end

  def _handle({com, args, _msg_id}, state) do
    Logger.error("No handler for command of #{com} with args: #{args}")
    _send("ERR - No handler\n", state)
    state
  end

  def _handle(nil, state), do: state
  def _handle(match, state) do
    Logger.error("No match  #{match}")
    _send("ERR - No match\n", state)
    state
  end

  # DO send commands
  def do_accepted(user) do
    "ACCEPTED #{user}\n"
  end

  def do_motd(motd) do
    motd
    |> String.split("\n")
    |> Enum.map(fn m -> "MOTD #{m}\n" end)
    |> Enum.join("")
  end

  # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#ADDUSER:server
  def do_adduser(user) do
    "ADDUSER #{user.name} #{user.country} #{user.userid}\t#{user.lobbyid}\n"
  end

  def do_clientstatus(client) do
    status = Client.to_bits(client)
    |> Integer.undigits(2)

    IO.inspect status, label: "do_clientstatus"

    "CLIENTSTATUS #{client.name}\t#{status}"
  end

  def do_friendlist(user) do
    friends = user.friends
    |> Enum.map(fn f ->
      "FRIENDLIST userName=#{f}\n"
    end)

    ["FRIENDLISTBEGIN\n"] ++ friends ++ ["FRIENDLISTEND\n"]
    |> Enum.join("")
  end

  def do_friendlist_request(user) do
    # Don't know for certain this is correct, making a guess
    requests = user.friend_requests
    |> Enum.map(fn f ->
      "FRIENDREQUESTLIST userName=#{f}\n"
    end)

    ["FRIENDREQUESTLISTBEGIN\n"] ++ requests ++ ["FRIENDREQUESTLISTEND\n"]
    |> Enum.join("")
  end

  # https://springrts.com/dl/LobbyProtocol/ProtocolDescription.html#BATTLEOPENED:server
  def do_battleopened(battle) do
    type = case battle.type do
      :normal -> 0
      :replay -> 1
    end
    nattype = case battle.nattype do
      :none -> 0
      :holepunch -> 1
      :fixed -> 2
    end
    passworded = (battle.passworded == 1)

    "BATTLEOPENED #{battle.id} #{type} #{nattype} #{battle.founder} #{battle.ip} #{battle.port} #{battle.max_players} #{passworded} #{battle.rank} #{battle.map_hash} #{battle.engine_name} #{battle.engine_version} #{battle.map_name}\t#{battle.title}\t#{battle.title}\t#{battle.game_name}\t#{battle.channel}\n"
  end

  def do_updatebattleinfo(battle) do
    locked = (battle.locked == 1)
    "UPDATEBATTLEINFO #{Enum.count(battle.spectators)} #{locked} #{battle.map_hash}\t#{battle.map_name}}\n"
  end

  def do_joined(channel, username) do
    "JOINED #{channel}\t#{username}\n"
  end
end