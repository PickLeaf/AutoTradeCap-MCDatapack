loot spawn ~ ~ ~ loot at_td_cp:auto_trade_cap
execute unless items entity @s armor.head \
    minecraft:wither_skeleton_skull[minecraft:enchantments={"at_td_cp:auto_trade":1}] \
    run return 1


tag @s remove at_td_cp.onlyBuyA
tag @s remove at_td_cp.hasBuyB
tag @s remove at_td_cp.hasA_cpn
tag @s remove at_td_cp.hasB_cpn
data \
    modify entity @s NoAI set value 0b
loot spawn ~ ~ ~ loot at_td_cp:auto_trade_cap
item replace entity @s armor.head with minecraft:air