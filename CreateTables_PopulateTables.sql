/*generated random customer data to insert into my tables*/
/* Customers table creation/population */
CREATE TABLE if not exists `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
);
INSERT INTO customers (Name, Address, PhoneNumber)
VALUES
    ('John Doe', '123 Main Street', '555-1234'),
    ('Jane Smith', '456 Elm Avenue', '555-5678'),
    ('Bob Johnson', '789 Oak Lane', '555-9012'),
    ('Alice Brown', '321 Pine Road', '555-3456'),
    ('David Wilson', '654 Cedar Drive', '555-7890'),
    ('Sara Lee', '987 Maple Street', '555-2345'),
    ('Michael Davis', '111 Birch Avenue', '555-6789'),
    ('Emily White', '222 Spruce Lane', '555-0123'),
    ('James Miller', '333 Oak Road', '555-4567'),
    ('Olivia Taylor', '444 Elm Street', '555-8901'),
    ('William Thomas', '555 Pine Avenue', '555-3456'),
    ('Ava Garcia', '666 Cedar Lane', '555-7890'),
    ('Benjamin Martinez', '777 Maple Avenue', '555-2345'),
    ('Sophia Robinson', '888 Birch Drive', '555-6789'),
    ('Logan Lee', '999 Spruce Road', '555-0123'),
    ('Mia Clark', '111 Oak Avenue', '555-4567'),
    ('Ethan Hall', '222 Elm Lane', '555-8901'),
    ('Abigail Wright', '333 Pine Drive', '555-3456'),
    ('Jackson Scott', '444 Cedar Street', '555-7890'),
    ('Liam Adams', '555 Maple Road', '555-2345'),
    ('Charlotte Baker', '666 Birch Avenue', '555-6789'),
    ('Lucas Lewis', '777 Spruce Lane', '555-0123'),
    ('Grace Mitchell', '888 Oak Road', '555-4567'),
    ('Mason Young', '999 Elm Avenue', '555-8901'),
    ('Harper Hernandez', '111 Cedar Street', '555-3456'),
    ('Evelyn King', '222 Maple Lane', '555-7890'),
    ('Alexander Walker', '333 Birch Avenue', '555-2345'),
    ('Chloe Hall', '444 Spruce Drive', '555-6789'),
    ('Daniel Perez', '555 Oak Lane', '555-0123');
    
/* bookings table creation and population */
CREATE TABLE if not exists `bookings` (
  `BookingID` int NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `TableNumber` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `CustomerID_idx` (`CustomerID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
);

INSERT INTO bookings (Date, TableNumber, CustomerID)
VALUES
    ('2023-09-10', 1, 1),
    ('2023-09-11', 2, 2),
    ('2023-09-12', 3, 3),
    ('2023-09-13', 4, 4),
    ('2023-09-14', 5, 5),
    ('2023-09-15', 6, 6),
    ('2023-09-16', 7, 7),
    ('2023-09-17', 8, 8),
    ('2023-09-18', 9, 9),
    ('2023-09-19', 10, 10),
    ('2023-09-20', 1, 11),
    ('2023-09-21', 2, 12),
    ('2023-09-22', 3, 13),
    ('2023-09-23', 4, 14),
    ('2023-09-24', 5, 15),
    ('2023-09-25', 6, 16),
    ('2023-09-26', 7, 17),
    ('2023-09-27', 8, 18),
    ('2023-09-28', 9, 19),
    ('2023-09-29', 10, 20),
    ('2023-09-30', 1, 21),
    ('2023-10-01', 2, 22),
    ('2023-10-02', 3, 23),
    ('2023-10-03', 4, 24),
    ('2023-10-04', 5, 25),
    ('2023-10-05', 6, 26),
    ('2023-10-06', 7, 27),
    ('2023-10-07', 8, 28),
    ('2023-10-08', 9, 29),
    ('2023-10-09', 10, 30);
    
    /* menu table creation and population */
CREATE TABLE if not exists `menu` (
  `MenuID` int NOT NULL,
  `CuisineName` varchar(45) DEFAULT NULL,
  `CuisineType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ;

-- Insert menu items
INSERT INTO menu (MenuID, CuisineName, CuisineType)
VALUES
    (1, 'Mozzarella Sticks', 'Appetizer'),
    (2, 'Chicken Wings', 'Appetizer'),
    (3, 'Caesar Salad', 'Appetizer'),
    (4, 'Margherita Pizza', 'Main Course'),
    (5, 'Spaghetti Bolognese', 'Main Course'),
    (6, 'Grilled Salmon', 'Main Course'),
    (7, 'French Fries', 'Side Dish'),
    (8, 'Onion Rings', 'Side Dish'),
    (9, 'Mixed Berry Smoothie', 'Beverage'),
    (10, 'Iced Tea', 'Beverage'),
    (11, 'Margarita', 'Cocktail'),
    (12, 'Mojito', 'Cocktail'),
    (13, 'Chocolate Brownie', 'Dessert'),
    (14, 'Cheesecake', 'Dessert'),
    (15, 'Green Salad', 'Appetizer'),
    (16, 'BBQ Ribs', 'Main Course'),
    (17, 'Vegetable Stir-Fry', 'Main Course'),
    (18, 'Garlic Bread', 'Side Dish'),
    (19, 'Lemonade', 'Beverage'),
    (20, 'Cosmopolitan', 'Cocktail');

/* staff table creation and population */
CREATE TABLE if not exists `staff` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `Role` varchar(45) DEFAULT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
);
INSERT INTO staff (Role, Salary)
VALUES
	('Manager', 60000),
    ('Server', 30000),
    ('Chef', 50000),
    ('Waiter', 25000),
    ('Bartender', 35000);
    
    
/* orders table creation and population */
CREATE TABLE if not exists `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `Quantity` int NOT NULL,
  `TotalCost` decimal(10,0),
  `Date` date DEFAULT NULL,
  `BookingID` int DEFAULT NULL,
  `MenuItem` int DEFAULT NULL,
  `StaffID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `BookingID_idx` (`BookingID`),
  KEY `MenuItem_idx` (`MenuItem`),
  KEY `StaffID_idx` (`StaffID`),
  CONSTRAINT `BookingID` FOREIGN KEY (`BookingID`) REFERENCES `bookings` (`BookingID`),
  CONSTRAINT `MenuItem` FOREIGN KEY (`MenuItem`) REFERENCES `menu` (`MenuID`),
  CONSTRAINT `StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`)
);
-- Insert orders
INSERT INTO orders (Quantity, TotalCost, Date, BookingID, MenuItem, StaffID)
VALUES
    (2, 240, '2023-09-10', 1, 4, 1),
    (3, 90, '2023-09-11', 2, 2, 2),
    (1, 45, '2023-09-12', 3, 1, 3),
    (2, 30, '2023-09-13', 4, 7, 4),
    (2, 60, '2023-09-14', 5, 10, 5),
    (1, 75, '2023-09-15', 6, 12, 6),
    (4, 160, '2023-09-16', 7, 3, 7),
    (2, 80, '2023-09-17', 8, 8, 8),
    (3, 105, '2023-09-18', 9, 9, 9),
    (2, 90, '2023-09-19', 10, 6, 10),
    (1, 30, '2023-09-20', 11, 8, 1),
    (3, 120, '2023-09-21', 12, 5, 2),
    (1, 45, '2023-09-22', 13, 13, 3),
    (2, 70, '2023-09-23', 14, 11, 4),
    (2, 60, '2023-09-24', 15, 9, 5),
    (1, 40, '2023-09-25', 16, 7, 6),
    (2, 70, '2023-09-26', 17, 16, 7),
    (3, 105, '2023-09-27', 18, 17, 8),
    (1, 50, '2023-09-28', 19, 18, 9),
    (2, 60, '2023-09-29', 20, 19, 10);

/* orderdelivery status table creation and population */
CREATE TABLE if not exists `orderdeliverystatus` (
  `OrderID` int NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `DeliveryDate` date DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ;

-- Insert delivery status for orders with Status 'Delivered' and NULL for others
INSERT INTO orderdeliverystatus (OrderID, Status, DeliveryDate)
VALUES
    (1, 'Pending', NULL),
    (2, 'Delivered', '2023-09-11'),
    (3, 'Shipped', NULL),
    (4, 'Pending', NULL),
    (5, 'Delivered', '2023-09-14'),
    (6, 'Shipped', NULL),
    (7, 'Pending', NULL),
    (8, 'Delivered', '2023-09-17'),
    (9, 'Shipped', NULL),
    (10, 'Pending', NULL),
    (11, 'Delivered', '2023-09-20'),
    (12, 'Shipped', NULL),
    (13, 'Pending', NULL),
    (14, 'Delivered', '2023-09-23'),
    (15, 'Shipped', NULL),
    (16, 'Pending', NULL),
    (17, 'Delivered', '2023-09-26'),
    (18, 'Shipped', NULL),
    (19, 'Pending', NULL),
    (20, 'Delivered', '2023-09-29');








    
    
    
