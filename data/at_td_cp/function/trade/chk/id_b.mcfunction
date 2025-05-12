data \
    modify storage at_td_cp:mem buyB \
    set from entity @s Offers.Recipes[0].buyB
data \
    modify storage at_td_cp:mem return \
    append value {id:"idB",r:1b}
execute \
    store success storage at_td_cp:mem return[{id:"idB"}].r byte 1 \
    run data modify storage at_td_cp:mem buyB.id \
        set from block ~ ~2 ~ Items[{Slot:1b}].id
execute \
    if data storage at_td_cp:mem buyB.components \
    run function at_td_cp:trade/chk/cpn_b
data \
    remove storage at_td_cp:mem buyB