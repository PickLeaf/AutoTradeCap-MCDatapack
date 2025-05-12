execute \
    store result storage at_td_cp:mem minus int -1 \
    run data \
        get entity @s Offers.Recipes[0].buy.count
item \
    modify block ~ ~2 ~ container.0 at_td_cp:minus
execute \
    if data entity @s Offers.Recipes[0].buyB \
    run function at_td_cp:trade/minus/b
data \
    remove storage at_td_cp:mem minus