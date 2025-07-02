# when be called: @s should is minecraft:minecart
# 当被调用时: 执行者应该是矿车
data \
    modify storage at_td_cp:mem compound.Slot \
    set value 0b
data \
    modify entity @s Items \
    append from storage at_td_cp:mem compound
kill @s