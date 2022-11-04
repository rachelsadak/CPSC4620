DROP SCHEMA IF EXISTS Pizzeria;

CREATE SCHEMA Pizzeria;

USE Pizzeria;

CREATE TABLE base_price (
    BasePriceID int,
    Size varchar(255),
    Crust varchar(255),
    CustCost float,
    BusCost float,
    PRIMARY KEY (BasePriceID)
);

 

CREATE TABLE topping_choice (
    PizzaID int,
    ToppingID int,
    Extra boolean,
    Size varchar(255),
    Crust varchar(255),
    PRIMARY KEY (Size, Crust)
);

 
 
CREATE TABLE topping (
    ToppingID int,
    ToppingName varchar(255),
    Price float, 
    CostPerUnit float, 
    Inventory int, 
    SmPizzaUnit int, 
    MdPizzaUnit int, 
    LgPizaUnit int, 
    XlPizzaUnit int
);


 
CREATE TABLE discount (
    DiscountID int,
    DiscountName varchar(255),
    DiscountType varchar(255),
    Amount float,
    PRIMARY KEY (DiscountID)
);

 

CREATE TABLE order_info (
    OrderNum int,  
    OrderTime varchar(255),
    TotalPrice float,
    BusCost float,
    OrderDate varchar(255),
    CustCost float,
    OrderType varchar(255),
    OrderStatus varchar(255),
    PRIMARY KEY (OrderNum)
);

 

CREATE TABLE pizza (
    PizzaID int,
    BusCost float,
    CusCost float,
    Size varchar(255),
    Crust varchar(255),
    Price float,
    State varchar(255),
    OrderNum int,
    BasePriceID int,
    PRIMARY KEY (PizzaID),
    FOREIGN KEY (OrderNum) REFERENCES order_info(OrderNum),
    FOREIGN KEY (BasePriceID) REFERENCES base_price(BasePriceID)
);

 

CREATE TABLE pizza_discount (
    DiscountID int,
    PizzaID int,
    PRIMARY KEY (DiscountID, PizzaID),
    FOREIGN KEY (DiscountID) REFERENCES discount(DiscountID),
    FOREIGN KEY (PizzaID) REFERENCES pizza(PizzaID)
);

 

CREATE TABLE order_discount (
    DiscountID int,
    PizzaID int,
    OrderID int,
    PRIMARY KEY (DiscountID, OrderID),
    FOREIGN KEY (DiscountID) REFERENCES discount (DiscountID),
    FOREIGN KEY (PizzaID) REFERENCES order_info(OrderNum)
);

 

CREATE TABLE customer (
    CustomerID int,
    FirstName varchar(255),
    LastName varchar (255),
    PhoneNumber int,
    City varchar(255),
    StateLetters varchar(255),
    Zip int,
    PRIMARY KEY (CustomerID)
);

 

CREATE TABLE dine_in (
    OrderNum int,
    TableNum int,
    PRIMARY KEY (OrderNum),
    FOREIGN KEY (OrderNum) REFERENCES order_info(OrderNum)
);

 

CREATE TABLE delivery (
    OrderNum int,
    CustomerID int,
    City varchar(255),
    StateLetters varchar(255),
    Zip int,
    PRIMARY KEY (OrderNum),
    FOREIGN KEY (OrderNum) REFERENCES order_info(OrderNum)
);

 

CREATE TABLE pickup (
    OrderNum int,
    CustomerID int,
    PRIMARY KEY (OrderNum),
    FOREIGN KEY (OrderNum) REFERENCES order_info(OrderNum)
);