data modify storage at_td_cp:var string \
    set from storage at_td_cp:var Offers.buy.id
return run data \
    modify storage at_td_cp:var string \
    set from block ~ ~2 ~ Items[{Slot:0b}].id