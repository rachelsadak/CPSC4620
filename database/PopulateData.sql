USE Pizzeria;

--
-- Dumping data for table `base_price`
--

INSERT INTO `base_price` (`BasePriceID`, `Size`, `Crust`, `CustCost`, `BusCost`) VALUES
(1, 'small', 'Thin', 3, 0.5),
(2, 'small', 'Original', 3, 0.75),
(3, 'small', 'Pan', 3.5, 1),
(4, 'small', 'Gluten-Free', 4, 2),
(5, 'medium', 'Thin', 5, 1),
(6, 'medium', 'Original', 5, 1.5),
(7, 'medium', 'Pan', 6, 2.25),
(8, 'medium', 'Gluten-Free', 6.25, 3),
(9, 'large', 'Thin', 8, 1),
(10, 'large', 'Original', 8, 2),
(11, 'large', 'Pan', 9, 3),
(12, 'large', 'Gluten-Free', 9.5, 4),
(13, 'x-large', 'Thin', 10, 2),
(14, 'x-large', 'Original', 10, 3),
(15, 'x-large', 'Pan', 11.5, 4.5),
(16, 'x-large', 'Gluten-Free', 12.5, 6);

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `PhoneNumber`, `Address`, `City`, `State`, `Zip`) VALUES
(1, 'Andrew', 'Wilkes-Krier', '864-254-5861', '115 Party Blvd', 'Anderson', 'SC', '29621'),
(2, 'Matt', 'Engers', '864-474-9953', NULL, NULL, NULL, NULL),
(3, 'Frank', 'Turner', '864-232-8944', '6745 Wessex St', 'Anderson', 'SC', '29621'),
(4, 'Milo', 'Auckerman', '864-878-5679', '8879 Suburban Home', 'Anderson', 'SC', '29621');

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`OrderID`, `OrderTime`, `TotalPrice`, `BusCost`, `OrderDate`, `CustCost`, `OrderType`, `OrderStatus`) VALUES
(1, '12:03:00', 11.5, 3.68, '2022-03-05', 13.5, 'dine-in', 'complete'),
(2, '12:05:00', 8.1, 3.23, '2022-04-03', 10.6, 'dine-in', 'complete'),
(3, '12:05:00', 6.75, 1.4, '2022-04-03', 6.75, 'dine-in', 'complete'),
(4, '21:30:00', 64.5, 19.8, '2022-03-03', 64.5, 'pick-up', 'complete'),
(5, '19:11:00', 35.2, 16.73, '2022-04-20', 45.5, 'delivery', 'complete'),
(6, '17:30:00', 15.35, 7.85, '2022-03-02', 16.85, 'pick-up', 'complete'),
(7, '18:17:00', 13.25, 3.2, '2022-03-02', 13.25, 'delivery', 'complete'),
(8, '20:32:00', 20.4, 6.3, '2022-04-13', 24, 'delivery', 'complete');

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`OrderID`, `CustomerID`, `Address`, `City`, `State`, `Zip`) VALUES
(5, 1, NULL, NULL, NULL, NULL),
(7, 3, NULL, NULL, NULL, NULL),
(8, 4, NULL, NULL, NULL, NULL);

--
-- Dumping data for table `dine_in`
--

INSERT INTO `dine_in` (`OrderID`, `TableNum`) VALUES
(1, 14),
(2, 4),
(3, 4);

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`DiscountID`, `DiscountName`, `DiscountPercentOff`, `DiscountDollarsOff`) VALUES
(1, 'Employee', 0.15, NULL),
(2, 'Lunch Special Medium', NULL, 1),
(3, 'Lunch Special Large', NULL, 2),
(4, 'Speciality Pizza', NULL, 1.5),
(5, 'Gameday Special', 0.2, NULL);


--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`OrderID`, `CustomerID`) VALUES
(4, 1),
(6, 2);

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`PizzaID`, `BusCost`, `CusCost`, `Size`, `Crust`, `Price`, `OrderID`, `BasePriceID`) VALUES
(1, 3.68, 13.5, NULL, NULL, NULL, 1, 9),
(2, 3.23, 10.6, NULL, NULL, NULL, 2, 7),
(3, 1.4, 6.75, NULL, NULL, NULL, 3, 2),
(4, 3.3, 10.75, NULL, NULL, NULL, 4, 10),
(5, 5.59, 14.5, NULL, NULL, NULL, 5, 14),
(6, 6.25, 17, NULL, NULL, NULL, 5, 14),
(7, 4.89, 14, NULL, NULL, NULL, 5, 14),
(8, 7.85, 17.6, NULL, NULL, NULL, 6, 16),
(9, 3.64, 15.5, NULL, NULL, NULL, 7, 9),
(10, 2.75, 12, NULL, NULL, NULL, 8, 9),
(11, 3.25, 12, NULL, NULL, NULL, 8, 9);

--
-- Dumping data for table `pizza_discount`
--

INSERT INTO `pizza_discount` (`PizzaID`, `DiscountID`) VALUES
(1, 3),
(2, 2),
(2, 4),
(5, 5),
(6, 4),
(6, 5),
(7, 5),
(8, 4),
(10, 1),
(11, 1);

--
-- Dumping data for table `topping`
--

INSERT INTO `topping` (`ToppingID`, `ToppingName`, `Price`, `CostPerUnit`, `Inventory`, `SmPizzaUnit`, `MdPizzaUnit`, `LgPizzaUnit`, `XlPizzaUnit`) VALUES
(1, 'Pepperoni', 1.25, 0.2, 100, 2, 3, 4, 5),
(2, 'Sausage', 1.25, 0.15, 100, 3, 3, 4, 4),
(3, 'Ham', 1.5, 0.15, 78, 2, 3, 3, 4),
(4, 'Chicken', 1.75, 0.25, 56, 2, 2, 2, 3),
(5, 'Green Pepper', 0.5, 0.02, 79, 1, 2, 2, 3),
(6, 'Onion', 0.5, 0.02, 85, 1, 2, 2, 3),
(7, 'Roma Tomato', 0.75, 0.03, 86, 2, 3, 4, 5),
(8, 'Mushrooms', 0.75, 0.1, 52, 2, 2, 3, 3),
(9, 'Black Olives', 0.6, 0.1, 39, 1, 1, 2, 2),
(10, 'Pineapple', 1, 0.25, 15, 1, 1, 2, 2),
(11, 'Jalapenos', 0.5, 0.05, 64, 1, 1, 1, 2),
(12, 'Banana Peppers', 0.5, 0.05, 36, 1, 1, 1, 2),
(13, 'Regular Cheese', 1.5, 0.12, 250, 2, 4, 5, 7),
(14, 'Four Cheese Blend', 2, 0.15, 150, 2, 4, 5, 7),
(15, 'Feta Cheese', 2, 0.18, 75, 2, 3, 4, 6),
(16, 'Goat Cheese', 2, 0.2, 54, 2, 3, 4, 6),
(17, 'Bacon', 1.5, 0.25, 89, 1, 2, 2, 3);

--
-- Dumping data for table `topping_choice`
--

INSERT INTO `topping_choice` (`PizzaID`, `ToppingID`, `Extra`) VALUES
(1, 1, NULL),
(1, 2, NULL),
(1, 13, 1),
(2, 7, NULL),
(2, 8, NULL),
(2, 9, NULL),
(2, 12, NULL),
(2, 15, NULL),
(3, 4, NULL),
(3, 12, NULL),
(3, 13, NULL),
(4, 1, NULL),
(4, 13, NULL),
(5, 1, NULL),
(5, 2, NULL),
(5, 14, NULL),
(6, 3, 1),
(6, 10, 1),
(6, 14, NULL),
(7, 11, NULL),
(7, 14, NULL),
(7, 17, NULL),
(8, 5, NULL),
(8, 6, NULL),
(8, 7, NULL),
(8, 8, NULL),
(8, 9, NULL),
(8, 16, NULL),
(9, 4, NULL),
(9, 5, NULL),
(9, 6, NULL),
(9, 8, NULL),
(9, 14, 1),
(10, 14, 1),
(11, 1, 1),
(11, 13, NULL);
