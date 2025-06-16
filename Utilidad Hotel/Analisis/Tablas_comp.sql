WITH hoteles as (
SELECT * FROM utilidad_hotel.`2018`
union
SELECT * FROM utilidad_hotel.`2019`
union
SELECT * FROM utilidad_hotel.`2020`)
SELECT *
FROM hoteles
left join market_segment
ON hoteles.market_segment = market_segment.market_segment
left join meal_cost
ON meal_cost.meal = hoteles.meal;