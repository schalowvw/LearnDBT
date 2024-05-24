{% macro limit_data_in_dev(column_name) %}

{% if target.name != 'dev' %}
    where {{ column_name }} >= date_add(today(), -INTERVAL 3 DAY)
{% endif %}

{% endmacro %}