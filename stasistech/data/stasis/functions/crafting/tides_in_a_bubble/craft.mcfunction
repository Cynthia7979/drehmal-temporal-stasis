tag @s remove sts_crafting_thrown_mundane
tag @e[type=minecraft:item,distance=0..2,nbt={Item:{id:"minecraft:glass_pane",Count:8b},OnGround:1b},limit=1] add sts_crafting_item
tag @e[type=minecraft:item,distance=0..2,nbt={Item:{id:"minecraft:soul_torch",Count:4b},OnGround:1b},limit=1] add sts_crafting_item

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Tides in a Bubble","color":"green","italic":false,"underlined":true}',Lore:['{"text":"A glass bubble containing a frozen exerpt of the Tides.","color":"dark_purple","italic":true}','{"text":"When placed next to one\'s ear, it faintly emits"}','{"text":"the sounds of the ocean. The craft of producing"}','{"text":"such curios dates back to the ancient Tidal Dynasty."}','{"text":"Said to draw from Nature\'s own potentia,"}','{"text":"this trinket possesses a unique ability to"}','{"text":"return matter — sometimes even time — back to its"}','{"text":"most unsophisticated state."}','{"text":" "}','{"text":"Return to the Tides","color":"green","italic":false}','{"text":"Right click to consume this item and","color":"dark_gray"}','{"text":"unclaim the chunk you are standing in.","color":"dark_gray"}','[{"text":"You will regain ","color":"dark_gray"},{"text":"1","color":"gray","italic":false},{"text":" claim.","color":"dark_gray"}]','{"text":"This chunk will no longer be protected","color":"dark_gray"}','{"text":"from restoration events.","color":"dark_gray"}','{"text":" "}','{"text":"This item is consumed on use.","color":"gray"}','{"text":" "}','{"text":"Trinket","color":"green","italic":false}']},HideFlags:255,RepairCost:1000000,Unbreakable:1b,CustomModelData:1002,tides_bubble:1b}}}
function stasis:playsound/tides_in_a_bubble_crafted
function stasis:particles/tides_in_a_bubble_crafted

kill @e[tag=sts_crafting_item,distance=0..2]
# Prevent double-soundFX
kill @s