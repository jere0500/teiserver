defmodule Teiserver.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Phoenix.PubSub, name: :teiserver_pubsub},
      {Teiserver.TcpServer, []},
      {UDPServer, []},
      concache_perm_sup(:lists),
      concache_perm_sup(:users),
      concache_perm_sup(:clients),
      concache_perm_sup(:battles),
      concache_perm_sup(:rooms),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Teiserver.Supervisor]
    start_result = Supervisor.start_link(children, opts)

    # # Call all our sub function st
    {:ok, t} = Task.start(fn -> startup() end)

    send(t, :begin)

    start_result
  end

  defp concache_perm_sup(name) do
    Supervisor.child_spec(
      {
        ConCache,
        [
          name: name,
          ttl_check_interval: false
        ]
      },
      id: {ConCache, name}
    )
  end

  defp startup() do
    receive do
      :begin -> nil
    end

    Teiserver.TestData.create_users()
    Teiserver.TestData.create_battles()
    ConCache.put(:lists, :clients, [])
    ConCache.put(:lists, :rooms, [])

    Teiserver.Room.create_room(%{
      name: "main",
      topic: "main",
      author: "ChanServ"
    })
    |> Teiserver.Room.add_room

    # ConCache.get(:lists, :rooms)
    # ConCache.get(:rooms, "main")
  end
end
