{{ 
    config(
        materialized='table'
    ) 
}}

with hourly_calories as (
    select *
    from {{ ref('stg_hourly_calories') }}
), 
hourly_intensities as (
    select *
    from {{ ref('stg_hourly_intensities') }}
),
hourly_steps as (
    select *
    from {{ ref('stg_hourly_steps') }}
)
select
    hourly_calories.Id,
    hourly_calories.ActivityHour,
    hourly_calories.Calories,
    hourly_intensities.TotalIntensity,
    hourly_intensities.AverageIntensity,
    hourly_steps.StepTotal
from
    hourly_calories 
    join hourly_intensities 
    on hourly_calories.Id = hourly_intensities.Id and hourly_calories.ActivityHour = hourly_intensities.ActivityHour
    join hourly_steps 
    on hourly_calories.Id = hourly_steps.Id and hourly_calories.ActivityHour = hourly_steps.ActivityHour
