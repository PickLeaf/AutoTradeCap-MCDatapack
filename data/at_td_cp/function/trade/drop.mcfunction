data \
    modify storage at_td_cp:mem sell.Slot \
    set value 0b
data \
    modify entity @s Items \
    append from storage at_td_cp:mem sell
data \
    remove storage at_td_cp:mem sell
kill @s