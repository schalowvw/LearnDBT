{{ config(
    materialized="table",
   )
}}

{{ date_spine(
    datepart="day",
    start_date=dbt_date.today("Europe/Berlin"),
    end_date=dbt_date.n_days_away(14, tz="Europe/Berlin")
   )
}}