with RawSpeed as (select * from traffic.RawSpeed)
select
  LinkID,
  RoadName,
  RoadCategory,
  SpeedBand,
  MinimumSpeed as MinSpeed,
  MaximumSpeed as MaxSpeed,
  Location
from RawSpeed 