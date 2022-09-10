{{ config(
        alias ='events'
)
}}

SELECT *
FROM
(
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('opensea_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('magiceden_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('looksrare_ethereum_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('x2y2_ethereum_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('sudoswap_ethereum_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('archipelago_ethereum_events') }}
        UNION
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
                tx_hash,
                block_number,
                tx_from,
                tx_to,
                platform_fee_amount_raw,
                platform_fee_amount,
                platform_fee_amount_usd,
                platform_fee_percentage,
                royalty_fee_receive_address,
                royalty_fee_currency_symbol,
                royalty_fee_amount_raw,
                royalty_fee_amount,
                royalty_fee_amount_usd,
                royalty_fee_percentage,
                unique_trade_id
        FROM {{ ref('cryptopunks_ethereum_events') }}
)
