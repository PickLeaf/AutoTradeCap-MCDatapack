data \
    modify storage at_td_cp:mem return \
    append value {id:"cpnB",r:1b}
execute \
    store success storage at_td_cp:mem return[{id:"cpnB"}].r byte 1 \
    run data modify storage at_td_cp:mem buyB.components \
        set from block ~ ~2 ~ Items[{Slot:1b}].components