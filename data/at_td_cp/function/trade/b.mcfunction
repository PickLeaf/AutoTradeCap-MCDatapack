data modify storage at_td_cp:var Offers \
    set from entity @s Offers.Recipes[0]
# 对比村民购买的第一个物品的数量
# Compare the count of the first item bought by villager
execute if function at_td_cp:trade/a/chk_count \
    run return 1
# 对比村民购买的第二个物品的数量
# Compare the count of the second item bought by villager
execute if function at_td_cp:trade/b/chk_count \
    run return 1
# 对比村民购买的第一个物品的id
# Compare the id of the first item bought by villager
execute if function at_td_cp:trade/a/chk_id \
    run return 1
# 对比村民购买的第二个物品的id
# Compare the id of the second item bought by villager
execute if function at_td_cp:trade/b/chk_id \
    run return 1
# 对比村民购买的第一个物品的组件
# Compare the components of the first item bought by villager
execute if entity @s[tag=at_td_cp.hasA_cpn] \
    if function at_td_cp:trade/a/chk_cpn \
    run return 1
# # 对比村民购买的第二个物品的组件
# Compare the components of the second item bought by villager
execute if entity @s[tag=at_td_cp.hasB_cpn] \
    if function at_td_cp:trade/b/chk_cpn \
    run return 1
# 能够成功交易
# Able to trade successfully
# 减少物品数量
# Decrease item count
execute store result \
    storage at_td_cp:var int int -1 \
    run data \
        get storage at_td_cp:var Offers.buy.count
item modify block ~ ~2 ~ container.0 at_td_cp:minus
execute store result \
    storage at_td_cp:var int int -1 \
    run data \
        get storage at_td_cp:var Offers.buyB.count
item modify block ~ ~2 ~ container.1 at_td_cp:minus
# 掉落售卖物品
# Drop sold item
data modify storage at_td_cp:var compound \
    set from storage at_td_cp:var Offers.sell
execute \
    summon minecraft:chest_minecart \
    run function at_td_cp:trade/drop
# 掉落经验瓶
# Drop experience bottle
data modify storage at_td_cp:var float \
    set value 0
execute store result \
    storage at_td_cp:var float float 0.1 \
    run data \
        get storage at_td_cp:var Offers.xp
loot spawn ~ ~ ~ loot at_td_cp:xp_bottle
# 整点声
# Play trade sound
playsound entity.villager.trade hostile @a ~ ~ ~