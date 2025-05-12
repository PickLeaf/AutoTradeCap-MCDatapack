data \
    modify entity @s equipment.head.\
    components."minecraft:max_damage" \
    set from entity @s Offers.Recipes[0].buyB.count
data \
    modify entity @s equipment.head.\
    components."minecraft:damage" \
    set from block ~ ~2 ~ Items[{Slot:1b}].count
execute \
    if items entity @s armor.head \
    *[damage~{durability:{min:1}}] \
    run data modify storage at_td_cp:mem return \
        append value {id:"countB",r:1b}