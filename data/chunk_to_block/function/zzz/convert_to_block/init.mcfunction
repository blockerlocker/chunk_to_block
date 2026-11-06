summon marker ~ ~ ~ {UUID:uuid('6bebe732-388d-4020-b5f1-b73bef78fcec')}
tp 6bebe732-388d-4020-b5f1-b73bef78fcec ~ ~ ~

execute store result storage chunk_to_block:temp all.x int 16 run data get entity 6bebe732-388d-4020-b5f1-b73bef78fcec Pos[0] 0.0625
execute store result storage chunk_to_block:temp all.z int 16 run data get entity 6bebe732-388d-4020-b5f1-b73bef78fcec Pos[2] 0.0625

kill 6bebe732-388d-4020-b5f1-b73bef78fcec

data modify storage chunk_to_block:temp all.block set from storage chunk_to_block:settings block

execute if data storage chunk_to_block:settings {block:"random"} run function bldp:func/random/blocks
execute if data storage chunk_to_block:settings {block:"random"} run data modify storage chunk_to_block:temp all.block set from storage bldp:array_random out

execute if data storage chunk_to_block:settings {block:"mined_block"} run data modify storage chunk_to_block:temp all.block set from storage bldp:mined_block out

function chunk_to_block:zzz/convert_to_block/commit with storage chunk_to_block:temp all