data \
    modify entity @s ArmorItems[3].\
    components."minecraft:max_damage" \
    set from entity @s Offers.Recipes[0].buy.count
data \
    modify entity @s ArmorItems[3].\
    components."minecraft:damage" \
    set from block ~ ~2 ~ Items[{Slot:0b}].count
execute \
    if items entity @s armor.head \
    *[damage~{durability:{min:1}}] \
    run data modify storage at_td_cp:mem return \
        append value {id:"countA",r:1b}
execute \
    if data entity @s Offers.Recipes[0].buyB \
    run function at_td_cp:trade/chk/count_b
data \
    remove entity @s ArmorItems[3].\
    components."minecraft:damage"
data \
    remove entity @s ArmorItems[3].\
    components."minecraft:max_damage"