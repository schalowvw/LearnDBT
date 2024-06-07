{% macro create_and_drop_table(table_name="temp") %}

    {% set query %}
        CREATE TABLE IF NOT EXISTS {{ table_name }} (
            t1 VARCHAR,
            t2 NUMERIC,
        );

        DROP TABLE {{ table_name }};
    {% endset %}

    {{ log('Creating and dropping table ' ~ table_name ~ ' if not existing', info=True) }}
    {% do run_query(query) %}

{% endmacro %}