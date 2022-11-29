-- ToppingPopularity: rank order of all the toppings (accounting for extra toppings) from most popular to least popular
CREATE OR REPLACE VIEW ToppingPopularity
AS 
SELECT
    t.ToppingName,
    (SELECT COUNT(*) FROM topping_choice WHERE ToppingID = t.ToppingID) +
    (SELECT COUNT(*) FROM topping_choice WHERE ToppingID = t.ToppingID AND Extra = TRUE)
    AS ToppingCount
FROM topping t
	INNER JOIN topping_choice tc ON t.ToppingID = tc.ToppingID
GROUP BY t.ToppingName
ORDER BY ToppingCount DESC;

-- SELECT * FROM ToppingPopularity;

-- ProfitByPizza: a summary of the profit by pizza size and crust type over a selected time period ordered by profit from most profitable to least profitable
CREATE OR REPLACE VIEW ProfitByPizza
AS 
SELECT bp.Size AS PizzaSize
	, bp.Crust AS PizzaCrust
	, (bp.CustCost - bp.BusCost) AS Profit
	, DATE_FORMAT(CONCAT(YEAR(oi.OrderDate),'-', MONTH(oi.OrderDate),'-',DAYOFMONTH(oi.OrderDate)),'%Y-%m-%d') AS LastOrderDate
FROM pizza p
	INNER JOIN order_info oi on p.OrderID = oi.OrderID
	INNER JOIN base_price bp on bp.BasePriceID = p.BasePriceID
GROUP BY bp.Size, bp.Crust
ORDER BY Profit DESC;

-- SELECT * FROM ProfitByPizza

-- ProfitByOrderType: a summary of the profit for each of the three types of orders by month with a grand total over all the orders at the pizzeria
CREATE OR REPLACE VIEW ProfitByOrderType
AS 
SELECT OrderType AS CustomerType
	, date_format(OrderDate,'%Y-%m-01') AS OrderDateSort
	, date_format(OrderDate,'%Y-%M') AS OrderDate
	, ROUND(SUM(TotalPrice),2) AS TotalOrderPrice
	, ROUND(SUM(BusCost),2) AS TotalOrderCost
	, ROUND(SUM((CustCost - BusCost)),2) AS Profit 
FROM order_info
GROUP BY OrderType, date_format(OrderDate,'%Y-%M')
UNION ALL 
SELECT '' AS CustomerType
	, '' AS OrderDateSort
	, 'Grand Toal' AS OrderDate
	, ROUND(SUM(TotalPrice),2) AS TotalOrderPrice
	, ROUND(SUM(BusCost),2) AS TotalOrderCost
	, ROUND(SUM((CustCost - BusCost)),2) AS Profit 
FROM order_info 
ORDER BY CustomerType DESC, OrderDateSort DESC;

-- SELECT * FROM ProfitByOrderType
