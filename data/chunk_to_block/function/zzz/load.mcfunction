gamerule max_block_modifications 110976

execute unless data storage chunk_to_block:settings block run data modify storage chunk_to_block:settings block set value bedrock

data merge storage when_block_mined:config {identify:true}