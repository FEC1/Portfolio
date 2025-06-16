WITH hoteles as (
SELECT * FROM utilidad_hotel.`2018`
union
SELECT * FROM utilidad_hotel.`2019`
union
SELECT * FROM utilidad_hotel.`2020`)

SELECT arrival_date_year as año, hotel,
round(sum((stays_in_weekend_nights+stays_in_week_nights)*adr),2) as utilidad 
FROM hoteles
group by año, hotel
;