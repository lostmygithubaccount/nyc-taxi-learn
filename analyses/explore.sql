{#
#}

{#
with temp as (
    select
        count(*)
    from {{ ref('stg_yellow') }}
    where payment_amount < 0
)

#}
{{ preview('stg_yellow', preview_limit=100, order_by='payment_amount desc') }}