# snowflake_transformation_dbt
Snowflake data transform using DBT:
1. (snowflake) -- create several schema M_LANDING, M_PROCESSING, M_CONSUMPTION
2. (dbt) -- create dbt project to connect snowflake
3. (dbt) -- create models to split into several models to establish revenue data
4. (dbt) -- modify dbt_project.yml to accomodate several schemas applied
5. (dbt) -- run the models & correction the errors
