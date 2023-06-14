create database Used_cars;
use used_cars;
select * from cars;

# we have a list of 1000 cars and their various features provided in the data. 
# Try to find the best suitable cars for all customers without wasting much of their time. 

# 1.A customer wants to buy a car and his budget is 8 to 10 lakhs. Find the best condition car for him.

SELECT 
    v_id, car_condition, current_price
FROM
    cars
WHERE
    current_price BETWEEN 250000 AND 500000
ORDER BY car_condition DESC;

# 2.A customer wants to buy a used car but not too old, make a list of cars for him where the cars is just used 2 to 3 years.

SELECT 
    v_id, years, current_price
FROM
    cars
WHERE
    years BETWEEN 2 AND 3
ORDER BY years;

# 3.A customer want to buy a used car but not too slow and his budget is 5 lakhs. show a list of cars he can afford.

SELECT 
    v_id, top_speed, current_price
FROM
    cars
WHERE
    current_price < 500000
ORDER BY top_speed DESC limit 10;

# 4.A travel agency owner wants to buy a used car and he wish that the cars fuel economy is high, make a list of cars that would best suit for him.

SELECT 
    v_id, economy, Current_price
FROM
    cars
ORDER BY economy DESC limit 10;

# 5.A customer wants to buy a new car whose rating is good and he wish the car to be a less used.

SELECT 
    V_id, rating, km, current_price
FROM
    cars
WHERE
    rating = 5
ORDER BY km
LIMIT 10;

# 6.A customer arrived at the showroom and he seems to be a racing guy, find the 10 best suitable cars for him.

SELECT 
    v_id, top_speed, hp, torque
FROM
    cars
WHERE
    top_speed = 200 AND torque > 100
ORDER BY hp DESC
LIMIT 10;

# 7.A family man wish to buy car that is less used and in good condition and expects good mileage. Find a best suitable car for him.

SELECT 
    v_id, km, years, car_condition, economy
FROM
    cars
WHERE
    years LIKE 2
        AND car_condition BETWEEN 9 AND 10
        AND economy > 12
ORDER BY km;

# 8.A customer seems to be driven by ratings and he is with a budget of 4 lakh so find him the car with best rating and in good condition.

SELECT 
    v_id, Rating, car_condition, current_price
FROM
    cars
WHERE
    rating = 5 AND car_condition = 10
        AND current_price < 400000
ORDER BY current_price DESC;

# 9.A racing coach has arrived at our showroom to find the used cars with best horse power and speed to train his students. Show him top 5 best cars of his wish.

SELECT 
    v_id, hp, top_speed
FROM
    cars
WHERE
    top_speed = 200
ORDER BY hp DESC
LIMIT 5;

# 10.A Travel agency owner demands 5 economy car under the budget of 3 lakhs;

SELECT 
    v_id, economy, current_price
FROM
    cars
WHERE
    economy = 15
ORDER BY current_price
LIMIT 5;

# 11.Now our owner wants to know how many cars we have sorted by years used.

SELECT 
    years, COUNT(years) AS no_of_cars
FROM
    cars
GROUP BY years
ORDER BY years;

# 12.show the best cars to our owner which can be attractive for household.

SELECT 
    v_id, km, economy, car_condition
FROM
    cars
WHERE
    car_condition BETWEEN 8 AND 10
        AND economy = 15
ORDER BY km;

# 13. show the cheapest and luxury car in our showroom.
SELECT 
    v_id, current_price
FROM
    cars
ORDER BY current_price DESC
LIMIT 1;

SELECT 
    v_id, current_price
FROM
    cars
ORDER BY current_price
LIMIT 1;

# 14.A customer is willing to buy a 2 years used car whose current_price is less than one-third the value of current on road price with budget of 2 lakh.

SELECT 
    v_id, years, On_road_now, current_price
FROM
    cars
WHERE
    current_price < 1 / 3 * (on_road_now)
        AND current_price < 200000
        AND years = 2
ORDER BY current_price;

# 15. Find the best car for company's use based on your personal choice.

SELECT 
    v_id, years, km, car_condition, rating, economy, top_speed
FROM
    cars
WHERE
    years = 2
        AND car_condition BETWEEN 8 AND 10
        AND rating BETWEEN 4 AND 5
        AND top_speed > 100
ORDER BY km
LIMIT 1;