# AUTHOR: Picarrow

$data modify storage death_detect:_ _.temp.mapping.entry.uuid set string storage death_detect:_ _.temp.mapping.text_to_parse -$(start_of_uuid) -$(end_of_uuid)
$data modify storage death_detect:_ _.temp.mapping.entry.name set string storage death_detect:_ _.temp.mapping.text_to_parse -$(start_of_name) -2
data modify storage death_detect:_ _.temp.mapping.entry.score_holder set from storage death_detect:_ _.temp.mapping.entry.name
