loot spawn ~ ~ ~ loot at_td_cp:auto_trade_cap
execute unless items entity @s armor.head \
    minecraft:wither_skeleton_skull[minecraft:enchantments={"at_td_cp:auto_trade":1}] \
    run return 1

loot spawn ~ ~ ~ loot at_td_cp:auto_trade_cap
item replace entity @s armor.head with minecraft:air