execute \
    unless entity @p \
    run return \
        run schedule function at_td_cp:print/info 2t
function at_td_cp:print/version
function at_td_cp:print/link
function at_td_cp:print/error
function at_td_cp:print/macro \
    with storage at_td_cp:print cmd
data remove storage at_td_cp:print cmd