with payments as (
    select * from {{ ref('stg_payments') }}
    left join {{ ref('stg_orders') }}
    using (order_id)
),

pivoted as (
    select
        order_id,

        {% set payment_methods = ['bank_transfer', 'coupon', 'credit_card', 'gift_card'] %}
        {% for pm in payment_methods %}
            sum(case when payment_method = '{{ pm }}' then amount else 0 end) as {{ pm }}_account
            {%- if not loop.last -%}
                ,
            {% endif %}
        {% endfor %}

    from payments
    where status = 'completed'
    group by 1
)

select * from pivoted