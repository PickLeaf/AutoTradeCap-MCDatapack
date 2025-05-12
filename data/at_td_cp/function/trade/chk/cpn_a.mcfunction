data \
    modify storage at_td_cp:mem return \
    append value {id:"cpnA",r:1b}
execute \
    store success storage at_td_cp:mem return[{id:"cpnA"}].r byte 1 \
    run data modify storage at_td_cp:mem buyA.components \
        set from block ~ ~2 ~ Items[{Slot:0b}].components