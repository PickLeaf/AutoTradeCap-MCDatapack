data modify storage at_td_cp:var compound \
    set from block ~ ~2 ~ Items[{Slot:0b}].components
return run data \
    modify storage at_td_cp:var compound \
    set from storage at_td_cp:var Offers.buy.components