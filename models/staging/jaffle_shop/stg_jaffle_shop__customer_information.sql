with 

source as (

    select * from {{ source('jaffle_shop', 'customer_information') }}

),

renamed as (

    select
        id,
        name,
        address

    from source

)

select * from renamed