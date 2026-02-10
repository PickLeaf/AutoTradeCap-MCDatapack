data modify storage at_td_cp:var compound \
    set from block ~ ~2 ~ Items[{Slot:1b}].components
return run data \
    modify storage at_td_cp:var compound \
    set from storage at_td_cp:var Offers.buyB.components