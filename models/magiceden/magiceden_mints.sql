{{ config(
        alias ='mints',
        post_hook='{{ expose_spells(\'["solana","polygon"]\',
                                    "project",
                                    "magiceden",
                                    \'["soispoke","springzh"]\') }}'
        )
}}
 
SELECT blockchain,
project,
version,
block_time,
token_id,
CAST(NULL AS VARCHAR(5)) as collection,
amount_usd,
token_standard,
trade_type,
number_of_items,
CAST(NULL AS VARCHAR(5)) as trade_category,
evt_type,
seller,
buyer,
amount_original,
amount_raw,
currency_symbol,
currency_contract,
CAST(NULL AS VARCHAR(5)) as nft_contract_address,
project_contract_address,
CAST(NULL AS VARCHAR(5)) as aggregator_name,
CAST(NULL AS VARCHAR(5)) as aggregator_address,
block_number,
tx_hash,
CAST(NULL AS VARCHAR(5)) as tx_from,
CAST(NULL AS VARCHAR(5)) as tx_to,
unique_trade_id
FROM {{ ref('magiceden_solana_mints') }}

UNION ALL

SELECT
blockchain,
project,
version,
block_time,
token_id,
collection,
amount_usd,
token_standard,
trade_type,
number_of_items,
trade_category,
evt_type,
seller,
buyer,
amount_original,
amount_raw,
currency_symbol,
currency_contract,
nft_contract_address,
project_contract_address,
aggregator_name,
aggregator_address,
block_number,
tx_hash,
tx_from,
tx_to,
unique_trade_id
FROM {{ ref('magiceden_polygon_mints') }}