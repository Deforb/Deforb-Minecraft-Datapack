# 检查所有玩家睡眠状态
execute store result score #temp sleep.reminder if entity @a[scores={sleep.time_since_rest=68400..}]

# 如果存在符合条件的玩家
execute if score #temp sleep.reminder matches 1.. run tellraw @a {"text":"夜幕降临，幻翼即将来袭！","color":"gold"}
execute if score #temp sleep.reminder matches 1.. run scoreboard players set #reminder sleep.reminder 1