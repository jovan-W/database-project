CREATE DATABASE HaLLoPharmacy
GO
USE HaLLoPharmacy
GO

CREATE TABLE [Employee] (
	EmployeeID CHAR(20) PRIMARY KEY CHECK (EmployeeID LIKE 'EM[0-9][0-9][0-9]'),
	EmployeeName VARCHAR(50) NOT NULL,
	EmployeeEmail VARCHAR(50) NOT NULL,
	EmployeePhoneNumber VARCHAR(20) NOT NULL,
	EmployeeAddress VARCHAR(50) NOT NULL,
	EmployeeDOB DATE NOT NULL,
	EmployeeGender VARCHAR(10) NOT NULL,
	EmployeeSalary INT NOT NULL
);

CREATE TABLE [MedicineType] (
	MedicineTypeID CHAR(20) PRIMARY KEY CHECK (MedicineTypeID LIKE 'CT[0-9][0-9][0-9]'),
	MedicineName VARCHAR(50) NOT NULL
);

CREATE TABLE [Medicine] (
	MedicineID CHAR(20) PRIMARY KEY CHECK (MedicineID LIKE 'MD[0-9][0-9][0-9]'),
	MedicineTypeID CHAR(20) FOREIGN KEY REFERENCES MedicineType(MedicineTypeID) NOT NULL,
	MedicineName VARCHAR(50) NOT NULL,
	MedicinePrice FLOAT NOT NULL,
	MedicineDescription VARCHAR(100) NOT NULL,
	MedicineStock INT NOT NULL,
);

CREATE TABLE [Vendor] (
	VendorID CHAR(20) PRIMARY KEY CHECK (VendorID LIKE 'VN[0-9][0-9][0-9]'),
	VendorName VARCHAR(50) NOT NULL,
	VendorPhoneNumber VARCHAR(20) NOT NULL,
	VendorAddress VARCHAR(50) NOT NULL,
	VendorEmail VARCHAR(50) NOT NULL,
	VendorEstablishedYear DATE NOT NULL
);

CREATE TABLE [PurchaseTransaction] (
	PurchaseTransactionID CHAR(20) PRIMARY KEY CHECK (PurchaseTransactionID LIKE 'PC[0-9][0-9][0-9]'),
	EmployeeID CHAR(20) FOREIGN KEY REFERENCES Employee(EmployeeID) NOT NULL,
	VendorID CHAR(20) FOREIGN KEY REFERENCES Vendor(VendorID) NOT NULL,
	TransactionDate DATE NOT NULL
);

CREATE TABLE [PurchaseDetail] (
	PurchaseTransactionID CHAR(20) FOREIGN KEY REFERENCES PurchaseTransaction(PurchaseTransactionID) NOT NULL,
	MedicineID CHAR(20) FOREIGN KEY REFERENCES Medicine(MedicineID) NOT NULL,
	Quantity INT NOT NULL
);

CREATE TABLE [Customer] (
	CustomerID CHAR(20) PRIMARY KEY CHECK (CustomerID LIKE 'CU[0-9][0-9][0-9]'),
	CustomerName VARCHAR(50) NOT NULL,
	CustomerPhoneNumber VARCHAR(20) NOT NULL,
	CustomerAddress VARCHAR(50) NOT NULL,
	CustomerGender VARCHAR(10) NOT NULL,
	CustomerEmail VARCHAR(50) NOT NULL,
	CustomerPassword VARCHAR(50) NOT NULL,
	CustomerDOB DATE NOT NULL
);

CREATE TABLE [SalesTransaction] (
	SalesTransactionID CHAR(20) PRIMARY KEY CHECK (SalesTransactionID LIKE 'SL[0-9][0-9][0-9]'),
	EmployeeID CHAR(20) FOREIGN KEY REFERENCES Employee(EmployeeID) NOT NULL,
	CustomerID CHAR(20) FOREIGN KEY REFERENCES Customer(CustomerID) NOT NULL,
	TransactionDate DATE NOT NULL
);

CREATE TABLE [SalesDetail] (
	SalesTransactionID CHAR(20) FOREIGN KEY REFERENCES SalesTransaction(SalesTransactionID) NOT NULL,
	MedicineID CHAR(20) FOREIGN KEY REFERENCES Medicine(MedicineID) NOT NULL,
	Quantity INT NOT NULL
);