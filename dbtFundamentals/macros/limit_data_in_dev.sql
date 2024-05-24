{% macro limit_data_in_dev(column_name) %}

{% if target.name == 'dev' %}
    where {{ column_name }} >= date_add(DATE '2018-04-09', -INTERVAL 1 MONTH)
{% endif %}

{% endmacro %}