scoreboard players add @s sts_claims 1

# Calculate the remaining # of claims for display
scoreboard players operation #remaining sts_temp = #playermax sts_temp
scoreboard players operation #remaining sts_temp -= @s sts_claims

# Error checking
execute if score #remaining sts_temp matches ..-1 run tellraw @s [{"text":"AN ERROR OCCURRED!", "color": "red","bold": true},{"text":" #remaining cannot be negative (found ","color": "gray","bold": false}, {"score":{"name":"#remaining","objective":"sts_temp"}, "color":"gray","bold":false},{"text":"). Please send this error message to the GT Drehmaris Discord!", "bold": false,"color": "white"}]

# Feedback
execute unless score #remaining sts_temp matches 0 run tellraw @s [{"text":"Success! ","color":"yellow","bold":true},{"text":"Temporal Stasis has been activated for the current chunk. You have ","color":"gray","bold":false},{"score":{"name":"#remaining","objective":"sts_temp"},"color":"white","bold":false},{"text":"/","color":"gray","bold":false},{"score":{"name":"#playermax","objective":"sts_temp"},"color":"gray","bold":false},{"text":" claims left.","color":"gray","bold":false}]
execute if score #remaining sts_temp matches 0 run tellraw @s [{"text":"Success! ","color":"yellow","bold":true},{"text":"Temporal Stasis has been activated for the current chunk. You have ","color":"gray","bold":false},{"text":"0","color":"red","bold":false},{"text":" claims left. Craft ","color":"gray","bold":false},{"text":"Tides in a Bubble","color":"aqua","underlined":true,"bold":false,"hoverEvent":{"action":"show_text","value":[{"text":"Click to view recipe"}]},"clickEvent":{"action":"run_command","value":"/trigger sts_tg_get_recipe_bubble"}},{"text":" to free a chunk.","color":"gray","bold":false}]

function stasis:playsound/claim_success
function stasis:particles/claim_success

item replace entity @s weapon.mainhand with air