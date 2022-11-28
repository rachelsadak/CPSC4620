USE Pizzeria;

--
-- Database: `Pizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `base_price`
--

CREATE TABLE `base_price` (
  `BasePriceID` int NOT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Crust` varchar(255) DEFAULT NULL,
  `CustCost` float DEFAULT NULL,
  `BusCost` float DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `OrderID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `dine_in`
--

CREATE TABLE `dine_in` (
  `OrderID` int NOT NULL,
  `TableNum` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `DiscountID` int NOT NULL,
  `DiscountName` varchar(255) DEFAULT NULL,
  `DiscountPercentOff` float DEFAULT NULL,
  `DiscountDollarsOff` float DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `OrderID` int NOT NULL,
  `OrderTime` varchar(255) DEFAULT NULL,
  `TotalPrice` float DEFAULT NULL,
  `BusCost` float DEFAULT NULL,
  `OrderDate` varchar(255) DEFAULT NULL,
  `CustCost` float DEFAULT NULL,
  `OrderType` varchar(255) DEFAULT NULL,
  `OrderStatus` varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `OrderID` int NOT NULL,
  `CustomerID` int NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `PizzaID` int NOT NULL,
  `BusCost` float DEFAULT NULL,
  `CusCost` float DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  `Crust` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `OrderID` int DEFAULT NULL,
  `BasePriceID` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `pizza_discount`
--

CREATE TABLE `pizza_discount` (
  `PizzaID` int NOT NULL,
  `DiscountID` int NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `topping`
--

CREATE TABLE `topping` (
  `ToppingID` int NOT NULL,
  `ToppingName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `CostPerUnit` float DEFAULT NULL,
  `Inventory` int DEFAULT NULL,
  `SmPizzaUnit` int DEFAULT NULL,
  `MdPizzaUnit` int DEFAULT NULL,
  `LgPizzaUnit` int DEFAULT NULL,
  `XlPizzaUnit` int DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table `topping_choice`
--

CREATE TABLE `topping_choice` (
  `PizzaID` int NOT NULL,
  `ToppingID` int NOT NULL,
  `Extra` tinyint(1) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base_price`
--
ALTER TABLE `base_price`
  ADD PRIMARY KEY (`BasePriceID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`OrderID`,`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `dine_in`
--
ALTER TABLE `dine_in`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`DiscountID`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`OrderID`,`CustomerID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`PizzaID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `BasePriceID` (`BasePriceID`);

--
-- Indexes for table `pizza_discount`
--
ALTER TABLE `pizza_discount`
  ADD PRIMARY KEY (`DiscountID`,`PizzaID`),
  ADD KEY `PizzaID` (`PizzaID`);

--
-- Indexes for table `topping`
--
ALTER TABLE `topping`
  ADD PRIMARY KEY (`ToppingID`);

--
-- Indexes for table `topping_choice`
--
ALTER TABLE `topping_choice`
  ADD PRIMARY KEY (`PizzaID`,`ToppingID`),
  ADD KEY `ToppingID` (`ToppingID`);

--
-- Constraints for dumped tables
--

--
-- AUTO_INCREMENT for table `base_price`
--
ALTER TABLE `base_price`
  MODIFY `BasePriceID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `DiscountID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `OrderID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `PizzaID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `topping`
--
ALTER TABLE `topping`
  MODIFY `ToppingID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_info` (`OrderID`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `dine_in`
--
ALTER TABLE `dine_in`
  ADD CONSTRAINT `dine_in_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_info` (`OrderID`);

--
-- Constraints for table `pickup`
--
ALTER TABLE `pickup`
  ADD CONSTRAINT `pickup_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_info` (`OrderID`),
  ADD CONSTRAINT `pickup_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);

--
-- Constraints for table `pizza`
--
ALTER TABLE `pizza`
  ADD CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `order_info` (`OrderID`),
  ADD CONSTRAINT `pizza_ibfk_2` FOREIGN KEY (`BasePriceID`) REFERENCES `base_price` (`BasePriceID`);

--
-- Constraints for table `pizza_discount`
--
ALTER TABLE `pizza_discount`
  ADD CONSTRAINT `pizza_discount_ibfk_1` FOREIGN KEY (`DiscountID`) REFERENCES `discount` (`DiscountID`),
  ADD CONSTRAINT `pizza_discount_ibfk_2` FOREIGN KEY (`PizzaID`) REFERENCES `pizza` (`PizzaID`);

--
-- Constraints for table `topping_choice`
--
ALTER TABLE `topping_choice`
  ADD CONSTRAINT `topping_choice_ibfk_1` FOREIGN KEY (`PizzaID`) REFERENCES `pizza` (`PizzaID`),
  ADD CONSTRAINT `topping_choice_ibfk_2` FOREIGN KEY (`ToppingID`) REFERENCES `topping` (`ToppingID`);