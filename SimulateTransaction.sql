GO
USE HaLLoPharmacy
GO


--simulate transaction

--customer CU001 membeli obat MD001 sebanyak 1 yang diurus oleh employee EM001 di tanggal 2022-1-01

--update stock MD001 dari 100 menjadi 99
BEGIN TRAN

UPDATE Medicine
SET MedicineStock = '99'
WHERE MedicineID = 'MD001'

SELECT * FROM Medicine
ROLLBACK

--Insert data sales baru ke sales transaction
BEGIN TRAN
INSERT INTO SalesTransaction VALUES
('SL026', 'EM001', 'CU001', '2022-01-01');
SELECT * FROM SalesTransaction
ROLLBACK

--insert data sales baru ke sales detail
BEGIN TRAN
INSERT INTO SalesDetail VALUES
('SL026', 'MD001', '1');
SELECT * FROM SalesDetail
ROLLBACK