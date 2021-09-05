----------SafeBoda PostgreSQL Case Study----------
-------------------Yvonne Makena------------------

--All timestamps in this dataset are in UCT. Please convert to EAT before conducting the analysis.
ALTER TABLE rides ALTER COLUMN inserted_at TYPE TIMESTAMP WITH TIME ZONE USING inserted_at AT TIME ZONE 'EAT'

--How many completed rides were there in Nairobi there on October 11th in 2019?
SELECT city_id, COUNT(city_id) As Nai_Completed_Rides FROM rides
WHERE city_id = 2 AND droppedoff_at LIKE '%2019-10-11%'
GROUP BY city_id
--Statistics
city_id nai_completed_rides
2	    289

--How many unique passengers completed rides in Nairobi on October 11th 2019? 
SELECT COUNT(DISTINCT passenger_id) As Unique_Passengers_Completed_Rides FROM rides
WHERE city_id = 2 AND droppedoff_at LIKE '%2019-10-11%'
--Statistics
unique_passengers_completed_rides
286

--How many completed rides were there in Nairobi on October 11th where at least some part of the trip was paid using SafeBoda cashless credit?
SELECT city_id, COUNT(city_id) As Nai_Completed_Rides_Paid_Cashless FROM rides
WHERE city_id = 2 AND droppedoff_at LIKE '%2019-10-11%'
AND id IN (SELECT ride_id FROM payments WHERE payment_type = 'credit')
GROUP BY city_id
--Statistics
city_id	nai_completed_rides_paid_cashless
2	    86

--How many unique passengers paid some of their ride using cashless on October 11th 2019 in Nairobi?
SELECT COUNT(DISTINCT passenger_id) As Unique_Passengers_Paid_Cashless FROM rides
WHERE city_id = 2 AND droppedoff_at LIKE '%2019-10-11%'
AND id IN (SELECT ride_id FROM payments WHERE payment_type = 'credit')
--Statistics
unique_passengers_paid_cashless
86

