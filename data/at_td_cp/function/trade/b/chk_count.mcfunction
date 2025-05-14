data \
    modify storage at_td_cp:mem compare.max \
    set from entity @s Offers.Recipes[0].buyB.count
data \
    modify storage at_td_cp:mem compare.value \
    set from block ~ ~2 ~ Items[{Slot:1b}].count
return run execute \
    if predicate at_td_cp:compare