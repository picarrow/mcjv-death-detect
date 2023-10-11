# AUTHOR: Picarrow

$data remove storage death_detect:_ _.map[{uuid:$(uuid)}]

data modify storage death_detect:_ _.tentry.uuid set from storage death_detect:_ _.tentry.name
function death_detect:check_if_not_found_1 with storage death_detect:_ _.tentry
