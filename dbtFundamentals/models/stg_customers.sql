with customers as (
    select id as customer_id,
           first_name,
           last_name

    from jaffleShop.customers
)

select * from customers