data modify entity @s item \
    set from storage at_td_cp:var compound
data modify storage at_td_cp:var int \
    set from storage at_td_cp:var compound.count
function at_td_cp:max_stack/loop
kill @s