{{
    config(
        materialized= 'view'
    )
}}

select
    {{ dbt_utils.generate_surrogate_key(['EMPLOYEE_ID']) }} as sk,
    EMPLOYEE_ID ,
	EMPLOYEE_NAME ,
	{{cc_percentage_calc('DEPARTMENT_ID') }} ,
	EMAIL ,
    PHONE ,
    ADDRESS ,
	HIRE_DATE ,
    EMPLOYMENT_STATUS,
    MD5_COLUMN,
    current_timestamp as SNOW_INSERT_TIME,
    current_timestamp as SNOW_UPDATE_TIME
    FROM {{ ref('stg_dim_user')}}