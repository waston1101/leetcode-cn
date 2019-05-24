select trips.request_at Day,
round((sum(case when trips.status != 'completed' then 1 else 0 end) /
(case when count(trips.id)>0 then count(trips.id) else 1 end) ),2) Cancellation_Rate
from trips 
left join users aa on trips.Client_Id = aa.users_id
left join users bb on trips.Driver_Id = bb.users_id
where trips.request_at >= '2013-10-01' and trips.request_at <= '2013-10-03' 
and aa.banned='No' and bb.banned='No'
group by trips.request_at




