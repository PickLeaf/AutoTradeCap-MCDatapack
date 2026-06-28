execute unless entity @s[type=minecraft:villager] \
    run return run \
        loot spawn ~ ~ ~ loot at_td_cp:auto_trade_cap
execute if items entity @s armor.head * \
    run return run \
        function at_td_cp:attack/drop

loot replace entity @s armor.head loot at_td_cp:auto_trade_cap