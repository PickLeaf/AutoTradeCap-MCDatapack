# 更新交易项标签
# update tag of trade item
tag @s remove at_td_cp.onlyBuyA
tag @s remove at_td_cp.hasBuyB
tag @s remove at_td_cp.hasA_cpn
tag @s remove at_td_cp.hasB_cpn
execute \
    unless data entity @s Offers.Recipes[0].buyB \
    run tag @s add at_td_cp.onlyBuyA
execute \
    if data entity @s Offers.Recipes[0].buyB \
    run tag @s add at_td_cp.hasBuyB
execute \
    if data entity @s Offers.Recipes[0].buy.components \
    run tag @s add at_td_cp.hasA_cpn
execute \
    if data entity @s Offers.Recipes[0].buyB.components \
    run tag @s add at_td_cp.hasB_cpn
# 获得村民购买的第一个物品的最大堆叠数量
# get the max stack of the first item bought by villager
data modify storage at_td_cp:var compound \
    set from entity @s Offers.Recipes[0].buy
execute summon minecraft:item_display \
    run function at_td_cp:max_stack/start
execute store result entity @s Rotation[0] float 1 \
    run data get storage at_td_cp:var int
# 获得村民购买的第二个物品的最大堆叠数量
# get the max stack of the second item bought by villager
data modify storage at_td_cp:var compound \
    set from entity @s Offers.Recipes[0].buyB
execute summon minecraft:item_display \
    run function at_td_cp:max_stack/start
execute store result entity @s Rotation[1] float 1 \
    run data get storage at_td_cp:var int

# 固定村民
# fix villager position
data modify entity @s NoAI set value 0b
execute if data block ~ ~2 ~ Items \
    run data \
        modify entity @s NoAI set value 1b
execute \
    if data block ~ ~2 ~ Items \
    align xyz positioned ~0.5 ~0.05 ~0.5 \
    run teleport \
        @s ~ ~ ~