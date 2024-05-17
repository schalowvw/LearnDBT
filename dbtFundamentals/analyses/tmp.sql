{%- set numbers = [0, 1, 2, 3, 4, 5] -%}

{% for number in numbers %}
  {%- if number % 2 == 0 -%}
    {%- set even_var = "even" -%}
  {%- else -%}
    {%- set even_var = "uneven" -%}
  {% endif %}
  This is the {{ even_var }} number {{ number }}
{%- endfor -%}