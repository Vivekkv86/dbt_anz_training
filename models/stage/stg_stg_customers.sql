{{
        config(
                materialized='view'
        )
}}
with customer_alias as (
select
        customer_id,
        nation_id,
        name
from {{ source('src1', 'stg_customers') }}
)

select * from customer_alias