data \
    modify storage at_td_cp:mem string \
    set from entity @s Offers.Recipes[0].buy.id
return run data \
    modify storage at_td_cp:mem string \
    set from block ~ ~2 ~ Items[{Slot:0b}].id