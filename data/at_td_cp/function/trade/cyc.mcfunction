# 循环交易列表
# cycle the trade list
data \
    modify entity @s Offers.Recipes \
    append from entity @s Offers.Recipes[0]
data \
    remove entity @s Offers.Recipes[0]
playsound \
    entity.villager.yes hostile @a ~ ~ ~

function at_td_cp:trade/update
data modify entity @s Health set value 20
data modify entity @s Fire set value 0s
setblock ~ ~ ~ minecraft:air destroy