data \
    modify storage at_td_cp:mem compound.Slot \
    set value 0b
data \
    modify entity @s Items \
    append from storage at_td_cp:mem compound
kill @s