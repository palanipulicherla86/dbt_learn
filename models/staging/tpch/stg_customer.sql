with source as (

    select * from {{ source('tpch','CUSTOMER')}}
),

CUSTOMER as (

    select
	  C_CUSTKEY as custkey,
	  C_NAME as name,
	  C_ADDRESS as address,
	  C_NATIONKEY as nationkey,
	  C_PHONE as phone ,
	  C_ACCTBAL as actbal,
	  C_MKTSEGMENT as segment ,
	  C_COMMENT as comment

from customer
)

select * form customer 