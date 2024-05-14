with 

source as (

    select * from {{ source('staging', 'hourly_steps') }}

),

renamed as (

    select
        id,
        activityhour,
        steptotal

    from source

)

select * from renamed
