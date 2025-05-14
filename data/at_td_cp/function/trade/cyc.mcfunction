data \
    modify entity @s Offers.Recipes \
    append from entity @s Offers.Recipes[0]
data \
    remove entity @s Offers.Recipes[0]
playsound \
    entity.villager.hurt hostile @a ~ ~ ~

data modify entity @s Health set value 20
function at_td_cp:trade/update
setblock ~ ~ ~ minecraft:air destroy