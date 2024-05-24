{%- macro limit_data_in_target(target_name, column_name, days_of_data=42) -%}

{%- if target.name == target_name -%}
    where {{ column_name }} >= date_add(DATE '2018-04-09', -INTERVAL {{ days_of_data }} DAY)
{%- endif -%}

{%- endmacro -%}