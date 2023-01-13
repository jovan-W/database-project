GO
USE HaLLoPharmacy
GO

--jika query ingin di test terlebih dahulu, mohon insert dulu sqlnyua menggunakan file query yang bernama InsertDatabase.sql

--1
select c.CustomerID as [Customer ID], CustomerName as [Customer Name], 
convert(varchar,TransactionDate,107) as [Transaction Date],
Sum(Quantity) as [Medicine Bought] 
from Customer c
join SalesTransaction st
on c.CustomerID = st.CustomerID
join SalesDetail sd
on st.SalesTransactionID = sd.SalesTransactionID
where day(TransactionDate) between 20 and 30 and CustomerGender like 'Female'
group by c.CustomerID,CustomerName,st.TransactionDate

--2
select right(e.EmployeeID,3) as [Employee Number],
EmployeeName as [Employee Name],
count(c.CustomerID) as [Customer Served]
from Employee e
join SalesTransaction st
on e.EmployeeID = st.EmployeeID
join Customer c
on c.CustomerID = st.CustomerID
where EmployeeName like '%b%' and EmployeeGender like 'Female' 
group by e.EmployeeID,EmployeeName
having count(c.CustomerID) > 1 

-- note itu primary key semua char (5) 

--3
select c.CustomerID as [Customer ID] , CustomerName as [Customer Name],
convert(varchar,CustomerDOB,106) as [Date of Birth],
count(st.SalesTransactionID) as [Transaction Count], 
sum(quantity * m.MedicinePrice) as [Total Purchase]
from Customer c
join SalesTransaction st
on c.CustomerID = st.CustomerID
join SalesDetail sd
on st.SalesTransactionID = sd.SalesTransactionID
join Medicine m
on m.MedicineID = sd.MedicineID
where month(TransactionDate) between 1 and 6 and EmployeeID in('EM004','EM006','EM008')
group by c.CustomerID,CustomerName,CustomerDOB

--4

select e.EmployeeID as [Employee ID], EmployeeName as [Employee Name],
REPLACE(EmployeePhoneNumber,left(EmployeePhoneNumber,2),'62') as [Local Phone Number],
count(e.EmployeeID) as [Transaction Done],
sum(quantity) as [Total Medicine Bought]
from Employee e
join PurchaseTransaction pt
on e.EmployeeID = pt.EmployeeID
join PurchaseDetail pd
on pt.PurchaseTransactionID = pd.PurchaseTransactionID
join Vendor v
on v.VendorID = pt.VendorID
where day(TransactionDate) between 10 and 20 and year(VendorEstablishedYear) >  2000
group by e.EmployeeID,EmployeeName,EmployeePhoneNumber
having count(e.EmployeeID) > 1

--5
select right(m.MedicineID,18) as [Medicine ID], UPPER(m.MedicineName) as [Medicine Name],
mt.MedicineName as [Category Name], 'Rp. ' + convert(varchar,MedicinePrice) as [Price],
MedicineStock as [Medicine Stock]
from Medicine m
join MedicineType mt
on m.MedicineTypeID = mt.MedicineTypeID
join SalesDetail sd
on m.MedicineID = sd.MedicineID
where MedicinePrice > 50000 and MedicineStock < (select(AVG(Quantity)) 
from Medicine m
join SalesDetail sd
on m.MedicineID = sd.MedicineID) 

--6
select REPLACE(e.EmployeeID,'EM','EMPLOYEE') as [Employee Code],
EmployeeName as [Employee Name],
convert(varchar,TransactionDate,101) as [Transaction Date],
m.MedicineName as [Medicine Name],
MedicinePrice as [Medicine Price],
sd.Quantity
from Employee e
join SalesTransaction st
on e.EmployeeID = st.EmployeeID
join SalesDetail sd
on st.SalesTransactionID = sd.SalesTransactionID
join Medicine m
on m.MedicineID = sd.MedicineID
where day(TransactionDate) = 2 and EmployeeSalary < (select(AVG(EmployeeSalary)) from Employee)

--7 
select c.CustomerID as [Customer ID], CustomerName as [Customer Name],
REPLACE(CustomerPhoneNumber,left(CustomerPhoneNumber,2),'62') as [Local Phone Number],
convert(varchar,CustomerDOB,107) as [Date of Birth],
sum(quantity) as [Medicine Bought]
from Customer c
join SalesTransaction st
on c.CustomerID = st.CustomerID
join SalesDetail sd
on st.SalesTransactionID = sd.SalesTransactionID
where CustomerGender not like 'Male' and sum(quantity) > (select(avg(quantity)) from SalesDetail)

--8
SELECT 
    e.EmployeeID AS [Employee ID], SUBSTRING(e.EmployeeName, 1, CHARINDEX(' ', e.EmployeeName) - 1) AS [First Name],
    'Rp. ' + CONVERT(varchar, e.EmployeeSalary) AS [Salary], CONVERT(varchar, e.EmployeeDOB, 107) AS [Date of Birth],
    COUNT(st.SalesTransactionID) AS [TransactionServed]

FROM 
    Employee e JOIN
    SalesTransaction st ON
    e.EmployeeID = st.EmployeeID

WHERE 
    e.EmployeeName LIKE '% %'

GROUP BY
    e.EmployeeID, e.EmployeeName, e.EmployeeSalary, e.EmployeeDOB

HAVING
    COUNT(st.SalesTransactionID) > 
    (SELECT AVG(cocot)
    FROM (
        SELECT COUNT(st.SalesTransactionID) AS cocot
        FROM SalesTransaction st
        JOIN Employee e on st.EmployeeID = e.EmployeeID
        GROUP BY e.EmployeeID
    ) AS x)
--9
create view VendorMaximumAverageQuantityViewer as
select v.VendorID as [Vendor ID], v.VendorName as [Vendor Name], CONVERT(varchar, AVG(pd.Quantity)) + ' item(s)' as [Average Supplied Medicine], 
CONVERT(varchar, MAX(pd.Quantity)) + ' item(s)' as [Maximum Supplied Quantity]


from Vendor v
join PurchaseTransaction pt
on v.VendorID = pt.VendorID
join PurchaseDetail pd
on pt.PurchaseTransactionID = pd.PurchaseTransactionID


where v.VendorName like '%a%'
group by v.VendorId, v.VendorName
having max(pd.Quantity) > 5

select * from VendorMaximumAverageQuantityViewer

--10
create view VendorSupplyViewer as
select right(v.VendorID, 18) as [Vendor Number], v.VendorName as [Vendor Name], v.VendorAddress as [Vendor Address], 'Rp. ' + CONVERT(varchar, m.MedicinePrice * pd.Quantity) as [Total Supplied Value], CONVERT(varchar,count(pd.MedicineID)) + ' medicine(s)' as [Medicine Type Supplied]

from Vendor v
join PurchaseTransaction pt
on v.VendorID = pt.VendorID
join PurchaseDetail pd
on pt.PurchaseTransactionID = pd.PurchaseTransactionID
join Medicine m
on m.MedicineID = pd.MedicineID

where m.MedicinePrice * pd.Quantity > 150000 AND pd.Quantity > 2
group by v.VendorID, v.VendorName, v.VendorAddress, m.MedicinePrice, pd.Quantity

select * from VendorSupplyViewer