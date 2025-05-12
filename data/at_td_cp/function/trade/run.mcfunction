function at_td_cp:trade/minus/a

data \
    modify storage at_td_cp:mem sell \
    set from entity @s Offers.Recipes[0].sell
execute \
    summon minecraft:chest_minecart \
    run function at_td_cp:trade/drop
