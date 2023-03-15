select *  
--from DBT_DEV.DBT_PKUMAR.MY_SECOND_DBT_MODEL
from 
{{ ref('my_second_dbt_model')}}