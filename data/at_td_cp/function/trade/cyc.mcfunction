data \
    modify entity @s Offers.Recipes \
    append from entity @s Offers.Recipes[0]
data \
    remove entity @s Offers.Recipes[0]
playsound \
    entity.villager.yes hostile @a ~ ~ ~