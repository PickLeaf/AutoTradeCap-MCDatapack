execute \
    if function at_td_cp:trade/a/chk_count \
    run return 1
execute \
    if function at_td_cp:trade/b/chk_count \
    run return 1
execute \
    if function at_td_cp:trade/a/chk_id \
    run return 1
execute \
    if function at_td_cp:trade/b/chk_id \
    run return 1
execute \
    if entity @s[tag=at_td_cp.hasA_cpn] \
    if function at_td_cp:trade/a/chk_cpn \
    run return 1
execute \
    if entity @s[tag=at_td_cp.hasB_cpn] \
    if function at_td_cp:trade/b/chk_cpn \
    run return 1
#successly work
#minus item count
execute \
    store result storage at_td_cp:mem int int -1 \
    run data \
        get entity @s Offers.Recipes[0].buy.count
item \
    modify block ~ ~2 ~ container.0 at_td_cp:minus
execute \
    store result storage at_td_cp:mem int int -1 \
    run data \
        get entity @s Offers.Recipes[0].buyB.count
item \
    modify block ~ ~2 ~ container.1 at_td_cp:minus
#drop selled item
data \
    modify storage at_td_cp:mem sell \
    set from entity @s Offers.Recipes[0].sell
execute \
    summon minecraft:chest_minecart \
    run function at_td_cp:trade/drop
#make some noise
playsound \
    entity.villager.trade hostile @a ~ ~ ~