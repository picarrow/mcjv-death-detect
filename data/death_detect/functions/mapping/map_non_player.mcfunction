# AUTHOR: Picarrow

function gu:generate
data modify storage death_detect:_ _.temp.mapping.entry.uuid set from storage gu:main out
data modify storage death_detect:_ _.temp.mapping.entry.score_holder set from storage gu:main out
