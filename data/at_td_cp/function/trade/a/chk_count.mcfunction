data \
    modify storage at_td_cp:mem compound.max \
    set from entity @s Offers.Recipes[0].buy.count
data \
    modify storage at_td_cp:mem compound.value \
    set from block ~ ~2 ~ Items[{Slot:0b}].count
return run execute \
    if predicate at_td_cp:compare