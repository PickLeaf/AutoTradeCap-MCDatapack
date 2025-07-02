# 对比村民购买的第一个物品的数量
execute \
    if function at_td_cp:trade/a/chk_count \
    run return 1
# 对比村民购买的第二个物品的数量
execute \
    if function at_td_cp:trade/b/chk_count \
    run return 1
# 对比村民购买的第一个物品的id
execute \
    if function at_td_cp:trade/a/chk_id \
    run return 1
# 对比村民购买的第二个物品的id
execute \
    if function at_td_cp:trade/b/chk_id \
    run return 1
# 对比村民购买的第一个物品的组件
execute \
    if entity @s[tag=at_td_cp.hasA_cpn] \
    if function at_td_cp:trade/a/chk_cpn \
    run return 1
# # 对比村民购买的第二个物品的组件
execute \
    if entity @s[tag=at_td_cp.hasB_cpn] \
    if function at_td_cp:trade/b/chk_cpn \
    run return 1
# 能够成功交易
# can trade successly
# 减少物品数量
# minus item count
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
# 掉落售卖物品
# drop selled item
data \
    modify storage at_td_cp:mem compound \
    set from entity @s Offers.Recipes[0].sell
execute \
    summon minecraft:chest_minecart \
    run function at_td_cp:trade/drop
# 掉落经验瓶
# drop xp bottle
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
# 整点声
# make some noise
playsound \
    entity.villager.trade hostile @a ~ ~ ~