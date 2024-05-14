with 

source as (

    select * from {{ source('staging', 'hourly_calories') }}

),

renamed as (

    select
        id,
        activityhour,
        calories

    from source

)

select * from renamed
