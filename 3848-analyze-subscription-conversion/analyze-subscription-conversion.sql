-- Write your PostgreSQL query statement below
with CalculatedAverage as (
    select user_id, 
        round(avg(activity_duration) filter (where activity_type = 'free_trial'), 2) as trial_avg_duration,
        round(avg(activity_duration) filter (where activity_type = 'paid'), 2) as paid_avg_duration
    from UserActivity
    group by user_id
)

select user_id, trial_avg_duration, paid_avg_duration
from CalculatedAverage
where paid_avg_duration is not null
order by user_id