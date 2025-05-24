-- Entity Integrity
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Referential Integrity
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Domain Integrity
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Age INT CHECK (Age >= 18 AND Age <= 65),
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other'))
);
