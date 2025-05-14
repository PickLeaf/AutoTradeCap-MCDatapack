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
data \
    modify entity @s NoAI set value 0b
execute \
    if data block ~ ~2 ~ Items \
    run data \
        modify entity @s NoAI set value 1b
execute \
    if data block ~ ~2 ~ Items \
    align xyz positioned ~0.5 ~0.05 ~0.5 \
    run teleport \
        @s ~ ~ ~ 0 0