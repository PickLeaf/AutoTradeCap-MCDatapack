execute \
    if function at_td_cp:trade/a/chk_count \
    run return 1
execute \
    if function at_td_cp:trade/a/chk_id \
    run return 1
execute \
    if entity @s[tag=at_td_cp.hasA_cpn] \
    if function at_td_cp:trade/a/chk_cpn \
    run return 1
#successly work
#minus item count
execute \
    store result storage at_td_cp:mem int int -1 \
    run data \
        get entity @s Offers.Recipes[0].buy.count
item \
    modify block ~ ~2 ~ container.0 at_td_cp:minus
#drop selled item
data \
    modify storage at_td_cp:mem compound \
    set from entity @s Offers.Recipes[0].sell
execute \
    summon minecraft:chest_minecart \
    run function at_td_cp:trade/drop
#drop xp bottle
data \
    modify storage at_td_cp:mem int \
    set value 0
execute \
    store result storage at_td_cp:mem float float 0.1 \
    run data \
        get entity @s Offers.Recipes[0].xp
loot \
    spawn ~ ~ ~ loot \
    at_td_cp:xp_bottle
#make some noise
playsound \
    entity.villager.trade hostile @a ~ ~ ~