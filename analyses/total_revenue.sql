with payments as (
    select * from {{ ref('stg_payments') }}
),

total_revenue as (
    select sum(amount) as revenue
    from payments
    where status = 'success'
)

select * from total_revenue