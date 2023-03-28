with src_speed as (select * from {{ref('src_speed')}})
select
  LinkID,
  RoadName,
  RoadCategory,
  (case when MaxSpeed > 90 then 90 else MaxSpeed end - MinSpeed) RangeSpeed
from src_speed