USE Pizzeria;


-- ToppingPopularity: rank order of all the toppings (accounting for extra toppings) from most popular to least popular


CREATE OR REPLACE VIEW ToppingPopularity
AS 
SELECT
    topping.ToppingName,
    (SELECT COUNT(*) FROM topping_choice WHERE ToppingID = topping.ToppingID) +
    (SELECT COUNT(*) FROM topping_choice WHERE ToppingID = topping.ToppingID AND Extra = TRUE)
    as ToppingCount
FROM 
    topping, 
    topping_choice
GROUP BY
    topping.ToppingName
ORDER BY 
    ToppingCount DESC;

-- SELECT * FROM ToppingPopularity;

-- ProfitByPizza: a summary of the profit by pizza size and crust type over a selected time period ordered by profit from most profitable to least profitable
CREATE OR REPLACE VIEW ProfitByPizza
AS 
SELECT 
    pizza.Size as PizzaSize, 
    pizza.Crust as PizzaCrust,
    pizza.CusCost - pizza.BusCost as Profit, 
    CONCAT(
        YEAR(order_info.OrderDate), "-",
        MONTH(order_info.OrderDate), "-",
        DAY(order_info.OrderDate)) as LastOrderDate
FROM
    pizza,
    order_info
GROUP BY    
    PizzaSize, PizzaCrust
ORDER BY
    Profit DESC;

-- SELECT * FROM ProfitByPizza

-- ProfitByOrderType: a summary of the profit for each of the three types of orders by month with a grand total over all the orders at the pizzeria
CREATE OR REPLACE VIEW ProfitByOrderType
AS 
(SELECT
    order_info.OrderType as CustomerType,
    CONCAT(YEAR(order_info.OrderDate),"-",MONTHNAME(order_info.OrderDate)) as OrderDate,
    order_info.Price as TotalOrderPrice, 
    order_info.BusCost as TotalOrderCost, 
    order_info.CustCost - order_info.BusCost as Profit
FROM 
    order_info
GROUP BY    
    CustomerType, 
ORDER BY    
    CustomerType DESC, OrderDate DESC)
UNION all 
(SELECT '' CustomerType, 'Grand Toal' OrderDate, SUM(order_info.Price), SUM(order_info.BusCost), SUM(order_info.CustCost - order_info.BusCost)
FROM order_info);

-- SELECT * FROM ProfitByOrderType;
    
    
    