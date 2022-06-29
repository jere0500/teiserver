defmodule Teiserver.Bridge.UnitNames do

  @unit_list [
    {"armaap", "advanced aircraft plant", "advanced aircraft plant"},
    {"armalab", "advanced bot lab", "advanced bot lab"},
    {"armaca", "advanced construction aircraft", "advanced construction aircraft"},
    {"armack", "advanced construction bot", "advanced construction bot"},
    {"armacsub", "advanced construction sub", "advanced construction sub"},
    {"armacv", "advanced construction vehicle", "advanced construction vehicle"},
    {"armmmkr", "advanced energy converter", "advanced energy converter"},
    {"armafus", "advanced fusion reactor", "advanced fusion reactor"},
    {"armarad", "advanced radar tower", "advanced radar tower"},
    {"armasy", "advanced shipyard", "advanced shipyard"},
    {"armadvsol", "advanced solar collector", "advanced solar collector"},
    {"armason", "advanced sonar station", "advanced sonar station"},
    {"armavp", "advanced vehicle plant", "advanced vehicle plant"},
    {"armasp", "air repair pad", "air repair pad"},
    {"armap", "aircraft plant", "aircraft plant"},
    {"armseap", "albatross", "puffin"},
    {"armamb", "ambusher", "rattlesnake"},
    {"armamsub", "amphibious complex", "amphibious complex"},
    {"armanac", "anaconda", "crocodile"},
    {"armdl", "anemone", "anemone"},
    {"armanni", "annihilator", "pulsar"},
    {"armaak", "archangel", "archangel"},
    {"armaas", "archer", "dragonslayer"},
    {"armcom", "armada commander", "armada commander"},
    {"armjuno", "armada juno", "juno"},
    {"armatlas", "atlas", "stork"},
    {"armfgate", "aurora", "aurora"},
    {"armkam", "banshee", "banshee"},
    {"armbanth", "bantha", "titan"},
    {"armbeamer", "beamer", "beamer"},
    {"armbeaver", "beaver", "beaver"},
    {"armbrtha", "big bertha", "basilica"},
    {"armblade", "blade", "hornet"},
    {"armlab", "bot lab", "bot lab"},
    {"armbrawl", "brawler", "roughneck"},
    {"armbull", "bulldog", "bull"},
    {"armcir", "chainsaw", "chainsaw"},
    {"armckfus", "cloakable fusion reactor", "cloakable fusion reactor"},
    {"armcarry", "colossus", "haven"},
    {"armdecom", "commander", "commander"},
    {"armcrus", "conqueror", "paladin"},
    {"armca", "construction aircraft", "construction aircraft"},
    {"armck", "construction bot", "construction bot"},
    {"armcs", "construction corvette", "construction ship"},
    {"armch", "construction hovercraft", "construction hovercraft"},
    {"armcsa", "construction seaplane", "construction seaplane"},
    {"armcv", "construction vehicle", "construction vehicle"},
    {"armconsul", "consul", "consul"},
    {"armroy", "crusader", "corsair"},
    {"armdecade", "decade", "dolphin"},
    {"armdf", "decoy fusion reactor", "decoy fusion reactor"},
    {"armrl", "defender", "nettle"},
    {"armemp", "detonator", "paralyzer"},
    {"armclaw", "dragon's claw", "dragon's claw"},
    {"armeyes", "dragon's eye", "beholder"},
    {"armdrag", "dragon's teeth", "dragon's teeth"},
    {"armdfly", "dragonfly", "abductor"},
    {"armawac", "eagle", "oracle"},
    {"armpship", "ellysaw", "ellysaw"},
    {"armmakr", "energy converter", "energy converter"},
    {"armestor", "energy storage", "energy storage"},
    {"armepoch", "epoch", "epoch"},
    {"armaser", "eraser", "smuggler"},
    {"armsjam", "escort", "bermuda"},
    {"armshltx", "experimental gantry", "experimental gantry"},
    {"armshltxuw", "experimental gantry", "experimental gantry"},
    {"armfark", "fark", "butler"},
    {"armfboy", "fatboy", "fatboy"},
    {"armferret", "ferret", "ferret"},
    {"armfido", "fido", "hound"},
    {"armflak", "flakker", "arbalest"},
    {"armfflak", "flakker ns", "naval arbalest"},
    {"armflash", "flash", "blitz"},
    {"armflea", "flea", "tick"},
    {"armuwmmm", "floating adv. energy converter", "naval advanced energy converter"},
    {"armfmkr", "floating energy converter", "naval energy converter"},
    {"armfhp", "floating hovercraft platform", "naval hovercraft platform"},
    {"armfrad", "floating radar/sonar tower", "naval radar/sonar tower"},
    {"armfatf", "floating targeting facility", "naval pinpointer"},
    {"armfort", "fortification wall", "fortification wall"},
    {"armfig", "freedom fighter", "falcon"},
    {"armfus", "fusion reactor", "fusion reactor"},
    {"armageo", "geothermal powerplant", "advanced geothermal powerplant"},
    {"armgeo", "geothermal powerplant", "geothermal powerplant"},
    {"armgremlin", "gremlin", "gremlin"},
    {"armrecl", "grim reaper", "grim reaper"},
    {"armguard", "guardian", "gauntlet"},
    {"armgplat", "gun platform", "gun platform"},
    {"armham", "hammer", "mace"},
    {"armuwadves", "hardened energy storage", "hardened energy storage"},
    {"armuwadvms", "hardened metal storage", "hardened metal storage"},
    {"armtl", "harpoon", "harpoon"},
    {"armhawk", "hawk", "highwind"},
    {"armhp", "hovercraft platform", "hovercraft platform"},
    {"armspy", "infiltrator", "ghost"},
    {"armvader", "invader", "tumbleweed"},
    {"armjam", "jammer", "umbra"},
    {"armjanus", "janus", "janus"},
    {"armjeth", "jethro", "crossbow"},
    {"armgate", "keeper", "keeper"},
    {"armmine2", "kilo", "medium mine"},
    {"armkraken", "kraken", "gorgon"},
    {"armlance", "lancet", "cormorant"},
    {"armliche", "liche", "liche"},
    {"armllt", "llt", "sentry"},
    {"armmart", "luger", "mauser"},
    {"armlun", "lun", "lunkhead"},
    {"armsub", "lurker", "eel"},
    {"armmar", "marauder", "marauder"},
    {"armmark", "marky", "compass"},
    {"armmav", "maverick", "gunslinger"},
    {"armmine3", "mega", "heavy mine"},
    {"armfmine3", "mega ns", "heavy mine"},
    {"armmercury", "mercury", "mercury"},
    {"armmerl", "merl", "ambassador"},
    {"armmex", "metal extractor", "metal extractor"},
    {"armmstor", "metal storage", "metal storage"},
    {"armmine1", "micro", "light mine"},
    {"armbats", "millennium", "dreadnought"},
    {"armmoho", "moho mine", "advanced metal extractor"},
    {"armatl", "moray", "moray"},
    {"armnanotc", "nano turret", "construction turret"},
    {"armnanotcplat", "nano turret", "naval construction turret"},
    {"armuwmex", "offshore metal extractor", "naval metal extractor"},
    {"armlatnk", "panther", "jaguar"},
    {"armpeep", "peeper", "blink"},
    {"armpw", "peewee", "pawn"},
    {"armamph", "pelican", "platypus"},
    {"armmanni", "penetrator", "starlight"},
    {"armyork", "phalanx", "shredder"},
    {"armpnix", "phoenix", "blizzard"},
    {"armpincer", "pincer", "pincer"},
    {"armsubk", "piranha", "barracuda"},
    {"armpb", "pit bull", "pit bull"},
    {"armmlv", "podger", "groundhog"},
    {"armamd", "protector", "citadel"},
    {"armgmm", "prude", "prude"},
    {"armrad", "radar tower", "radar tower"},
    {"armmship", "ranger", "longbow"},
    {"armraz", "razorback", "razorback"},
    {"armsptk", "recluse", "recluse"},
    {"armrectr", "rector", "lazarus"},
    {"armsilo", "retaliator", "armageddon"},
    {"armrock", "rocko", "rocketeer"},
    {"armfav", "rover", "rover"},
    {"armsaber", "sabre", "sabre"},
    {"armsam", "samson", "whistler"},
    {"armscab", "scarab", "umbrella"},
    {"armfrock", "scumbag", "scumbag"},
    {"armsehak", "seahawk", "horizon"},
    {"armplat", "seaplane platform", "seaplane platform"},
    {"armseer", "seer", "prophet"},
    {"armhlt", "sentinel", "overwatch"},
    {"armfrt", "sentry", "naval nettle"},
    {"armserp", "serpent", "serpent"},
    {"armfdrag", "shark's teeth", "shark's teeth"},
    {"armsnipe", "sharpshooter", "sharpshooter"},
    {"armart", "shellshocker", "shellshocker"},
    {"armsy", "shipyard", "shipyard"},
    {"armpt", "skeeter", "skater"},
    {"armsh", "skimmer", "seeker"},
    {"armjamt", "sneaky pete", "sneaky pete"},
    {"armsolar", "solar collector", "solar collector"},
    {"armsonar", "sonar station", "sonar station"},
    {"armspid", "spider", "webber"},
    {"armstil", "stiletto", "stiletto"},
    {"armfhlt", "stingray", "manta"},
    {"armstump", "stumpy", "stout"},
    {"armah", "swatter", "sweeper"},
    {"armtarg", "targeting facility", "pinpointer"},
    {"armthor", "thor", "thor"},
    {"armthund", "thunder", "stormbringer"},
    {"armtide", "tidal generator", "tidal generator"},
    {"armsfig", "tornado", "cyclone"},
    {"armsd", "tracer", "tracer"},
    {"armcroc", "triton", "turtle"},
    {"armsb", "tsunami", "tsunami"},
    {"armamex", "twilight", "twilight"},
    {"armuwes", "underwater energy storage", "naval energy storage"},
    {"armuwfus", "underwater fusion plant", "naval fusion reactor"},
    {"armuwms", "underwater metal storage", "naval metal storage"},
    {"armuwmme", "underwater moho mine", "naval advanced metal extractor"},
    {"armmls", "valiant", "voyager"},
    {"armvang", "vanguard", "vanguard"},
    {"armvp", "vehicle plant", "vehicle plant"},
    {"armveil", "veil", "veil"},
    {"armvulc", "vulcan", "ragnarok"},
    {"armwar", "warrior", "centurion"},
    {"armwin", "wind generator", "wind turbine"},
    {"armmh", "wombat", "possum"},
    {"armzeus", "zeus", "welder"},
    {"armfast", "zipper", "sprinter"},
    {"cormine1", "11", "light mine"},
    {"cormine2", "110", "medium mine"},
    {"cormine4", "112", "medium mine"},
    {"cormine3", "1100", "heavy mine"},
    {"corfmine3", "1100 ns", "heavy mine"},
    {"corak", "a.k.", "grunt"},
    {"coraap", "advanced aircraft plant", "advanced aircraft plant"},
    {"coralab", "advanced bot lab", "advanced bot lab"},
    {"coraca", "advanced construction aircraft", "advanced construction aircraft"},
    {"corack", "advanced construction bot", "advanced construction bot"},
    {"coracsub", "advanced construction sub", "advanced construction sub"},
    {"coracv", "advanced construction vehicle", "advanced construction vehicle"},
    {"cormmkr", "advanced energy converter", "advanced energy converter"},
    {"corafus", "advanced fusion reactor", "advanced fusion reactor"},
    {"corarad", "advanced radar tower", "advanced radar tower"},
    {"corasy", "advanced shipyard", "advanced shipyard"},
    {"coradvsol", "advanced solar collector", "advanced solar collector"},
    {"corason", "advanced sonar station", "advanced sonar station"},
    {"coravp", "advanced vehicle plant", "advanced vehicle plant"},
    {"corasp", "air repair pad", "air repair pad"},
    {"corap", "aircraft plant", "aircraft plant"},
    {"coramsub", "amphibious complex", "amphibious complex"},
    {"corassistdrone", "assist drone", "assist drone"},
    {"corfgate", "atoll", "atoll"},
    {"corveng", "avenger", "valiant"},
    {"corban", "banisher", "banisher"},
    {"corbhmth", "behemoth", "cerberus"},
    {"corblackhy", "black hydra", "black hydra"},
    {"corbw", "bladewing", "shuriken"},
    {"corlab", "bot lab", "bot lab"},
    {"corbuzz", "buzzsaw", "calamity"},
    {"corcan", "can", "sumo"},
    {"corjamt", "castro", "castro"},
    {"cortron", "catalyst", "catalyst"},
    {"corcat", "catapult", "catapult"},
    {"corflak", "cobra", "birdshot"},
    {"corenaa", "cobra - ns", "naval birdshot"},
    {"cordecom", "commander", "commander"},
    {"cormando", "commando", "commando"},
    {"corca", "construction aircraft", "construction aircraft"},
    {"corck", "construction bot", "construction bot"},
    {"corch", "construction hovercraft", "construction hovercraft"},
    {"corcsa", "construction seaplane", "construction seaplane"},
    {"corcs", "construction ship", "construction ship"},
    {"corcv", "construction vehicle", "construction vehicle"},
    {"corsent", "copperhead", "fury"},
    {"corcom", "cortex commander", "cortex commander"},
    {"corjuno", "cortex juno", "juno"},
    {"corcrash", "crasher", "trasher"},
    {"corseal", "croc", "alligator"},
    {"corcut", "cutlass", "cutlass"},
    {"corsb", "dam buster", "dam buster"},
    {"correcl", "death cavalry", "death cavalry"},
    {"coreter", "deleter", "obscurer"},
    {"corfdoom", "devastator", "devastator"},
    {"corvroc", "diplomat", "negotiator"},
    {"corhrk", "dominator", "arbiter"},
    {"cordoom", "doomsday machine", "bulwark"},
    {"corhllt", "double llt", "twin guard"},
    {"coreyes", "dragon's eye", "beholder"},
    {"cormaw", "dragon's maw", "dragon's maw"},
    {"cordrag", "dragon's teeth", "dragon's teeth"},
    {"cormakr", "energy converter", "energy converter"},
    {"corestor", "energy storage", "energy storage"},
    {"corroy", "enforcer", "oppressor"},
    {"corpship", "era", "riptide"},
    {"corerad", "eradicator", "eradicator"},
    {"corcrus", "executioner", "buccaneer"},
    {"corgant", "experimental gantry", "experimental gantry"},
    {"corgantuw", "experimental gantry", "experimental gantry"},
    {"corexp", "exploiter", "exploiter"},
    {"corfink", "fink", "finch"},
    {"coruwmmm", "floating adv. energy converter", "naval advanced energy converter"},
    {"corfmkr", "floating energy converter", "naval energy converter"},
    {"corfhp", "floating hovercraft platform", "naval hovercraft platform"},
    {"corfrad", "floating radar/sonar tower", "naval radar/sonar tower"},
    {"corfatf", "floating targeting facility", "naval pinpointer"},
    {"corfort", "fortification wall", "fortification wall"},
    {"corfmd", "fortitude", "prevailer"},
    {"corfast", "freaker", "twitcher"},
    {"corfus", "fusion reactor", "fusion reactor"},
    {"corgarp", "garpike", "garpike"},
    {"corageo", "geothermal powerplant", "advanced geothermal powerplant"},
    {"corgeo", "geothermal powerplant", "geothermal powerplant"},
    {"coramph", "gimp", "duck"},
    {"corgol", "goliath", "tzar"},
    {"corhal", "halberd", "halberd"},
    {"coruwadves", "hardened energy storage", "hardened energy storage"},
    {"coruwadvms", "hardened metal storage", "hardened metal storage"},
    {"cormabm", "hedgehog", "saviour"},
    {"corcarry", "hive", "oasis"},
    {"corhp", "hovercraft platform", "hovercraft platform"},
    {"corhunt", "hunter", "watcher"},
    {"corhurc", "hurricane", "hailstorm"},
    {"corvrad", "informer", "omen"},
    {"corgator", "instigator", "incisor"},
    {"corint", "intimidator", "basilisk"},
    {"corintr", "intruder", "intruder"},
    {"corfrock", "janitor", "janitor"},
    {"cordl", "jellyfish", "jellyfish"},
    {"corjugg", "juggernaut", "behemoth"},
    {"corkarg", "karganeth", "karganeth"},
    {"corkorg", "korgoth", "juggernaut"},
    {"corcrw", "krow", "dragon"},
    {"coratl", "lamprey", "lamprey"},
    {"corlevlr", "leveler", "pounder"},
    {"corssub", "leviathan", "kraken"},
    {"corllt", "llt", "guard"},
    {"coraak", "manticore", "manticore"},
    {"cormship", "messenger", "messenger"},
    {"cormex", "metal extractor", "metal extractor"},
    {"cormstor", "metal storage", "metal storage"},
    {"cormexp", "moho exploiter", "advanced exploiter"},
    {"cormoho", "moho mine", "advanced metal extractor"},
    {"cormort", "morty", "sheldon"},
    {"cormuskrat", "muskrat", "muskrat"},
    {"cornanotc", "nano turret", "construction turret"},
    {"cornanotcplat", "nano turret", "naval construction turret"},
    {"cornecro", "necro", "graverobber"},
    {"corsd", "nemesis", "nemesis"},
    {"cormh", "nixer", "mangonel"},
    {"coruwmex", "offshore metal extractor", "naval metal extractor"},
    {"corgate", "overseer", "overseer"},
    {"corspy", "parasite", "spectre"},
    {"cormls", "pathfinder", "pathfinder"},
    {"corsjam", "phantom", "phantasm"},
    {"cormart", "pillager", "quaker"},
    {"corparrow", "poison arrow", "poison arrow"},
    {"corrl", "pulverizer", "thistle"},
    {"corpun", "punisher", "agitator"},
    {"corpyro", "pyro", "fiend"},
    {"corrad", "radar tower", "radar tower"},
    {"corraid", "raider", "brute"},
    {"corape", "rapier", "wasp"},
    {"correap", "reaper", "tiger"},
    {"corroach", "roach", "bedbug"},
    {"cormadsam", "sam", "sam"},
    {"corscreamer", "screamer", "screamer"},
    {"corsh", "scrubber", "goon"},
    {"corseah", "seahook", "skyhook"},
    {"corplat", "seaplane platform", "seaplane platform"},
    {"corpt", "searcher", "herring"},
    {"corshad", "shadow", "whirlwind"},
    {"corshark", "shark", "predator"},
    {"corfdrag", "shark's teeth", "shark's teeth"},
    {"corsy", "shipyard", "shipyard"},
    {"corshiva", "shiva", "shiva"},
    {"corarch", "shredder", "arrow storm"},
    {"corshroud", "shroud", "shroud"},
    {"corsilo", "silencer", "apocalypse"},
    {"corsktl", "skuttle", "skuttle"},
    {"cormist", "slasher", "lasher"},
    {"corah", "slinger", "birdeater"},
    {"corsub", "snake", "orca"},
    {"corsnap", "snapper", "cayman"},
    {"corsok", "sokolov", "cataphract"},
    {"corsolar", "solar collector", "solar collector"},
    {"corsonar", "sonar station", "sonar station"},
    {"corspec", "spectre", "deceiver"},
    {"cormlv", "spoiler", "trapper"},
    {"corfrt", "stinger", "slingshot"},
    {"corstorm", "storm", "aggravator"},
    {"corsumo", "sumo", "mammoth"},
    {"coresupp", "supporter", "supporter"},
    {"cortarg", "targeting facility", "pinpointer"},
    {"cortermite", "termite", "termite"},
    {"corthud", "thud", "thug"},
    {"corfhlt", "thunderbolt", "coral"},
    {"cortide", "tidal generator", "tidal generator"},
    {"cortitan", "titan", "angler"},
    {"cortoast", "toaster", "persecutor"},
    {"cortrem", "tremor", "tremor"},
    {"corseap", "typhoon", "monsoon"},
    {"coruwes", "underwater energy storage", "naval energy storage"},
    {"coruwfus", "underwater fusion plant", "naval fusion reactor"},
    {"coruwms", "underwater metal storage", "naval metal storage"},
    {"coruwmme", "underwater moho mine", "naval advanced metal extractor"},
    {"cortl", "urchin", "urchin"},
    {"corvalk", "valkyrie", "hercules"},
    {"corvamp", "vamp", "nighthawk"},
    {"corvp", "vehicle plant", "vehicle plant"},
    {"corvipe", "viper", "scorpion"},
    {"corsfig", "voodoo", "bat"},
    {"corvoyr", "voyeur", "augur"},
    {"corawac", "vulture", "condor"},
    {"corhlt", "warden", "warden"},
    {"corbats", "warlord", "despot"},
    {"corfav", "weasel", "rascal"},
    {"corwin", "wind generator", "wind turbine"},
    {"corwolv", "wolverine", "wolverine"},
  ]

  # Key is the old name, value is {new name, unit_code}
  @old_keys @unit_list |> Map.new(fn {code, old, new} ->
    {old, {code, new}}
  end)

  @new_keys @unit_list |> Map.new(fn {code, old, new} ->
    {new, {code, old}}
  end)

  @codes @unit_list |> Map.new(fn {code, _old, new} ->
    {code, new}
  end)

  @spec get_name(binary) :: nil | {:unchanged, any} | {:code, any} | {:reused, any} | {:found_new, any} | {:found_old, any}
  def get_name(name) do
    name = name
      |> String.downcase()
      |> String.trim()

    old = @old_keys[name]
    new = @new_keys[name]
    code = @codes[name]

    cond do
      code != nil ->
        {:code, code}
      old == nil and new == nil ->
        nil
      old == new ->
        {:unchanged, new}
      old != nil and new != nil ->
        {:reused, {old, new}}
      old != nil ->
        {:found_old, old}
      new != nil ->
        {:found_new, new}
      true ->
        nil
    end
  end
end
