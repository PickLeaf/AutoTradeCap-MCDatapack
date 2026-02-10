# 这段为什么不用if entity @s[type=villager]呢🤔我这么做一定有其道理的，应该
execute unless predicate {\
        "condition": "minecraft:entity_properties",\
        "entity": "this",\
        "predicate": {\
            "type": "minecraft:villager",\
        }\
    } run return run \
        function at_td_cp:attack/drop
execute if items entity @s armor.head * run return run \
    function at_td_cp:attack/drop

loot replace entity @s armor.head loot at_td_cp:auto_trade_cap