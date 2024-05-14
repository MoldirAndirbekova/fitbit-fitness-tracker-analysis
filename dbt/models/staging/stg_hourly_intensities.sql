with 

source as (

    select * from {{ source('staging', 'hourly_intensities') }}

),

renamed as (

    select
        id,
        activityhour,
        totalintensity,
        averageintensity

    from source

)

select * from renamed
