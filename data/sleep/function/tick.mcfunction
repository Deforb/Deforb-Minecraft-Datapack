# 每日重置检测标记
execute unless predicate sleep:is_dusk run scoreboard players reset #reminder sleep.reminder

# 主检测逻辑
execute if predicate sleep:is_dusk run function sleep:check_sleep