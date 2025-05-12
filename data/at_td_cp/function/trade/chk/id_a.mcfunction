data \
    modify storage at_td_cp:mem buyA \
    set from entity @s Offers.Recipes[0].buy
data \
    modify storage at_td_cp:mem return \
    append value {id:"idA",r:1b}
execute \
    store success storage at_td_cp:mem return[{id:"idA"}].r byte 1 \
    run data modify storage at_td_cp:mem buyA.id \
        set from block ~ ~2 ~ Items[{Slot:0b}].id
execute \
    if data storage at_td_cp:mem buyA.components \
    run function at_td_cp:trade/chk/cpn_a
data \
    remove storage at_td_cp:mem buyA
execute \
    if data entity @s Offers.Recipes[0].buyB \
    run function at_td_cp:trade/chk/id_b