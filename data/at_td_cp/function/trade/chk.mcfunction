execute \
    if data entity @s Offers.Recipes[0].buyB \
    unless data block ~ ~2 ~ Items[{Slot:1b}] \
    run return fail

data modify storage at_td_cp:mem return set value []
function at_td_cp:trade/chk/id_a
function at_td_cp:trade/chk/count_a

execute \
    unless data storage at_td_cp:mem return[{r:1b}] \
    run function at_td_cp:trade/run

data remove storage at_td_cp:mem return