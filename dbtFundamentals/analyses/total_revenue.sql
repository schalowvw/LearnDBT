with revenues as (
    select
        sum(amount)
    from {{ ref('stg_payments') }}
)

select * from revenues