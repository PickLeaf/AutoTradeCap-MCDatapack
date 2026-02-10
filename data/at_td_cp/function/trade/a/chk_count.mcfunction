data modify storage at_td_cp:var compound.max \
    set from storage at_td_cp:var Offers.buy.count
data modify storage at_td_cp:var compound.value \
    set from block ~ ~2 ~ Items[{Slot:0b}].count
data modify storage at_td_cp:var int \
    set from entity @s Rotation[0]
return run execute \
    if predicate at_td_cp:compare