USE Pizzeria

-- Toppings 
INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (1, 'Pepperoni', 1.25, 0.2, 100, 2, 2.75, 3.5, 4.5);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (2, 'Sausage', 1.25, 0.15, 100, 2.5, 3, 3.5, 4.25);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (3, 'Ham', 1.5, 0.15, 78, 2, 2.5, 3.25, 4);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (4, 'Chicken', 1.75, 0.25, 56, 1.5, 2, 2.25, 3);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (5, 'Green Pepper', 0.5, 0.02, 79, 1, 1.5, 2, 2.5);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (6, 'Onion', 0.5, 0.02, 85, 1, 1.5, 2, 2.75);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (7, 'Roma Tomato', 0.75, 0.03, 86, 2, 3, 3.5, 4.5);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (8, 'Mushrooms', 0.75, 0.1, 52, 1.5, 2, 2.5, 3);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (9, 'Black Olives', 0.6, 0.1, 39, 0.75, 1, 1.5, 2);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (10, 'Pineapple', 1, 0.25, 15, 1, 1.25, 1.75, 2);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (11, 'Jalapenos', 0.5, 0.05, 64, 0.5, 0.75, 1.25, 1.75);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (12, 'Banana Peppers', 0.5, 0.05, 36, 0.6, 1, 1.3, 1.75);
            
INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (13, 'Regular Cheese', 1.5, 0.12, 250, 2, 3.5, 5, 7);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (14, 'Four Cheese Blend', 2, 0.15, 150, 2, 3.5, 5, 7);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (15, 'Feta Cheese', 2, 0.18, 75, 1.75, 3, 4, 5.5);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (16, 'Goat Cheese', 2, 0.2, 54, 1.6, 2.75, 4, 5.5);

INSERT INTO topping(ToppingID, ToppingName, Price, CostPerUnit, Inventory, SmPizzaUnit, LgPizzaUnit, XlPizzaUnit)
    VALUES (17, 'Bacon', 1.5, 0.25, 89, 1, 1.5, 2, 3);

--Discounts
INSERT INTO discount(DiscountID, DiscountName, DiscountPercentOff, DiscountDollarsOff)
    VALUES('Employee', .15, NULL);
    
INSERT INTO discount(DiscountID, DiscountName, DiscountPercentOff, DiscountDollarsOff)
    VALUES('Lunch Special Medium', NULL, 1);

INSERT INTO discount(DiscountID, DiscountName, DiscountPercentOff, DiscountDollarsOff)
    VALUES('Lunch Special Large', NULL, 2);

INSERT INTO discount(DiscountID, DiscountName, DiscountPercentOff, DiscountDollarsOff)
    VALUES('Speciality Pizza', NULL, 1.5);

INSERT INTO discount(DiscountID, DiscountName, DiscountPercentOff, DiscountDollarsOff)
    VALUES('Gameday Special', .2, NULL);

-- Base Prices
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(1, 'small', 'Thin', 3, 0.5);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'small', 'Original', 3, 0.75);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'small', 'Pan', 3.5, 1);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'small', 'Gluten-Free', 4, 2);

INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(1, 'medium', 'Thin', 5, 1);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'medium', 'Original', 5, 1.5);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'medium', 'Pan', 6, 2.25);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'medium', 'Gluten-Free', 6.25, 3);


INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(1, 'large', 'Thin', 8, 1);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'large', 'Original', 8, 2);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'large', 'Pan', 9, 3);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'large', 'Gluten-Free', 9.5, 4);

INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(1, 'x-large', 'Thin', 10, 2);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'x-large', 'Original', 10, 3);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'x-large', 'Pan', 11.5, 4.5);
INSERT INTO base_price(BasePriceID, Size, Crust, CustPrice, BusCost)
    VALUES(2, 'x-large', 'Gluten-Free', 12.5, 6);


-- Orders
INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(1, '2022-03-05', '12:03:00', 13.5, 3.68, NULL, 'dine-in', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(2, '2022-04-03', '12:05:00', 10.60, 3.23, NULL, 'dine-in', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(3, '2022-04-03', '12:05:00', 6.75, 1.4, NULL, 'dine-in', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(4, '2022-03-03', '21:30:00', 64.55, 19.8, NULL, 'pick-up', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(5, '2022-04-20', '19:11:00', 45.5, 16.86, NULL, 'delivery', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(6, '2022-03-02', '17:30:00', 16.85, 7.85, NULL, 'pick-up', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(7, '2022-03-02', '18:17:00', 13.25, 3.2, NULL, 'delivery', 'complete');

INSERT INTO order_info(OrderNum, OrderDate, OrderTime, CustPrice, BusCost, TotalPrice, OrderType, OrderStatus)
    VALUES(8, '2022-04-13', '20:32:00', 24, 6.3, NULL, 'delivery', 'complete');



INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(1, 'Large', 'Thin', 13.5, 1, 9, 3.68);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(2, 'Medium', 'Pan', 10.6, 2, 7, 3.23);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(3, 'Small', 'Original', 6.75, 3, 2, 1.4);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(4, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(5, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(6, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(7, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(8, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(9, 'Large', 'Original', 10.75, 4, 10, 3.3);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(10, 'X-Large', 'Original', 14.50, 5, 14, 5.59);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(11, 'X-Large', 'Original', 17.00, 5, 14, 5.59);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(12, 'X-Large', 'Original', 14.00, 5, 14, 5.68);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(13, 'X-Large', 'Gluten-Free', 16.85, 6, 16, 7.85);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(14, 'Large', 'Thin', 13.25, 7, 9, 3.2);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(15, 'Large', 'Thin', 12, 8, 9, 3.75);

INSERT INTO pizza(PizzaID, Size, Crust, CustCost, OrderNum, BasePriceID, BusCost)
    VALUES(16, 'Large', 'Thin', 12, 8, 9, 2.55);


INSERT INTO topping_choice
VALUES (1, 1, FALSE);

INSERT INTO topping_choice
VALUES (1,2, FALSE);

INSERT INTO topping_choice
VALUES (1, 13, TRUE);

INSERT INTO topping_choice
VALUES (2, 7, FALSE);

INSERT INTO topping_choice
VALUES (2, 8, FALSE);

INSERT INTO topping_choice
VALUES (2, 9, FALSE);

INSERT INTO topping_choice
VALUES (2, 12, FALSE);

INSERT INTO pizza_topping
VALUES (2, 15, FALSE);

INSERT INTO topping_choice
VALUES (3, 4, FALSE);

INSERT INTO topping_choice
VALUES (3, 12, FALSE);

INSERT INTO topping_choice
VALUES (3, 13, FALSE);

INSERT INTO topping_choice
VALUES (4, 1, FALSE);

INSERT INTO topping_choice
VALUES (4, 13, FALSE);

INSERT INTO topping_choice
VALUES (5, 1, FALSE);

INSERT INTO topping_choice
VALUES (5, 13, FALSE);

INSERT INTO topping_choice
VALUES (6, 1, FALSE);

INSERT INTO topping_choice
VALUES (6, 13, FALSE);

INSERT INTO topping_choice
VALUES (7, 1, FALSE);

INSERT INTO topping_choice
VALUES (7, 13, FALSE);

INSERT INTO topping_choice
VALUES (8, 1, FALSE);

INSERT INTO topping_choice
VALUES (8, 13, FALSE);

INSERT INTO topping_choice
VALUES (9, 1, FALSE);

INSERT INTO topping_choice
VALUES (9, 13, FALSE);

INSERT INTO topping_choice
VALUES (10, 1, FALSE);

INSERT INTO topping_choice
VALUES (10, 2, FALSE);

INSERT INTO topping_choice
VALUES (10, 14, FALSE);

INSERT INTO topping_choice
VALUES (11, 3, TRUE);

INSERT INTO topping_choice
VALUES (11, 10, TRUE);

INSERT INTO topping_choice
VALUES (11, 14, FALSE);

INSERT INTO topping_choice
VALUES (12, 11, FALSE);

INSERT INTO topping_choice
VALUES (12, 14, FALSE);

INSERT INTO topping_choice
VALUES (12, 17, FALSE);

INSERT INTO topping_choice
VALUES (13, 5, FALSE);

INSERT INTO topping_choice
VALUES (13, 6, FALSE);

INSERT INTO topping_choice
VALUES (13, 7, FALSE);

INSERT INTO topping_choice
VALUES (13, 8, FALSE);

INSERT INTO topping_choice
VALUES (13, 9, FALSE);

INSERT INTO topping_choice
VALUES (13, 16, FALSE);

INSERT INTO topping_choice
VALUES (14, 4, FALSE);

INSERT INTO topping_choice
VALUES (14, 5, FALSE);

INSERT INTO topping_choice
VALUES (14, 6, FALSE);

INSERT INTO topping_choice
VALUES (14, 8, FALSE);

INSERT INTO topping_choice
VALUES (14, 14, FALSE);

INSERT INTO topping_choice
VALUES (15, 14, TRUE);

INSERT INTO topping_choice
VALUES (16, 1, TRUE);

INSERT INTO topping_choice
VALUES (16, 13, FALSE);

INSERT INTO customer
VALUES (1, 'Andrew', 'Wilkes-Krier', '864-254-5861', '115 Party Blvd, Anderson SC 29621');

INSERT INTO customer
VALUES (2, 'Matt', 'Engers', '864-474-9953', NULL);

INSERT INTO customer
VALUES (3, 'Frank', 'Turner', '864-232-8944', '6745 Wessex St, Anderson, SC 29621');

INSERT INTO customer
VALUES (4, 'Milo', 'Aukerman', '864-878-5679', '879 Suburban Home, Anderson, SC 29621');


INSERT INTO pickup
VALUES (4, 1)

INSERT INTO pickup
VALUES (6, 2)


INSERT INTO delivery
VALUES (5, 1)

INSERT INTO delivery
VALUES (7, 2)

INSERT INTO delivery
VALUES (8, 4)


INSERT INTO dine_in
VALUES (14, 1)

INSERT INTO dine_in
VALUES (4, 2)

INSERT INTO dine_in
VALUES (4, 2)

INSERT INTO pizza_discount
VALUES (3, 1);

INSERT INTO pizza_discount
VALUES (2, 2);

INSERT INTO pizza_discount
VALUES (4, 2);

INSERT INTO pizza_discount
VALUES (4, 11);

INSERT INTO pizza_discount
VALUES (4, 13);


INSERT INTO order_discount
VALUES (5, 5);

INSERT INTO order_discount
VALUES (1, 8);