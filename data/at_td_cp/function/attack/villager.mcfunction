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