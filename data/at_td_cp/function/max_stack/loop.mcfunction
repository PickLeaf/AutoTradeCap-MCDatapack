item modify entity @s container.0 at_td_cp:add_one
execute unless function at_td_cp:max_stack/get \
    run return fail
function at_td_cp:max_stack/loop