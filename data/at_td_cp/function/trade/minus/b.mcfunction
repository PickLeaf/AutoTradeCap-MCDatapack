execute \
    store result storage at_td_cp:mem minus int -1 \
    run data \
        get entity @s Offers.Recipes[0].buyB.count
item \
    modify block ~ ~2 ~ container.1 at_td_cp:minus