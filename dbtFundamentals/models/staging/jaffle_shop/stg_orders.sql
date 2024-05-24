select id      as order_id,
       user_id as customer_id,
       order_date,
       status

from {{ source('jaffle_shop', 'orders') }}

{{ limit_data_in_target(target_name = 'unset', column_name = 'order_date') }}