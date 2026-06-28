execute unless data storage at_td_cp:config \
    {version:"V1.5"} run return \
        run function at_td_cp:version_changed {version:"V1.5"}
execute if data storage at_td_cp:config {disableShowVersion:1b} \
    run return fail
function at_td_cp:print/info
# Stop print version every time you login world:
# /data modify storage at_td_cp:config disableShowVersion set value 1b