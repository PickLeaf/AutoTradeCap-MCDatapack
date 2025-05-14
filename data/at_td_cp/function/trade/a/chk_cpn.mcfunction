data \
    remove storage at_td_cp:mem compound
data \
    modify storage at_td_cp:mem compound \
    set from block ~ ~2 ~ Items[{Slot:0b}].components
return run data \
    modify storage at_td_cp:mem compound \
    set from entity @s Offers.Recipes[0].buy.components