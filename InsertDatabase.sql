GO
USE HaLLoPharmacy3
GO

-- Master
-- Employee ID, NAME, Email, Phone Number, Address, DOB, Gender, Salary
BEGIN TRAN
INSERT INTO Employee VALUES
('EM001', 'Adeline Jocelyn', 'adelinejocelyn@hallo.com', '4402226416', '743 New Bloomfield Rd', '1999-10-13', 'Female', '3500000'),
('EM002', 'Brent Johnson', 'brentjohnson@hallo.com', '2403740125', '315 A Long Branch Rd', '1999-09-11', 'Male', '3500000'),
('EM003', 'Pope Gregory', 'popegregory@hallo.com' , '7407332800', '207 Main St', '1998-01-20', 'Male', '3500000'),
('EM004', 'Susan Watson', 'susanwatson@hallo.com', '4196388373', '1383 Dugan Ln', '2002-05-30', 'Female', '2500000'),
('EM005', 'Bryan McPeeper', 'bryanmcpeeper@hallo.com', '8067712429', '3115 N Thompson St', '2001-08-12', 'Male', '2500000'),
('EM006', 'Peter Parker', 'peterparker@hallo.com', '7753705134', '46 W Oak St', '2002-03-01', 'Male', '2500000'),
('EM007', 'Dana Zane', 'danazane@hallo.com', '8567184560', '27542 NE 28th Ct', '2003-07-14', 'Female', '2500000'),
('EM008', 'Gillian Robert', 'gillianrobert@hallo.com', '5672957977', '709 Fern St', '2002-11-11', 'Male', '2500000'),
('EM009', 'Julianne Stingray', 'juliannestingray@hallo.com', '2062634582', '263 N Spring St', '2002-12-31', 'Female', '2500000'),
('EM010', 'Dorothy Haze', 'dorothyhaze@hallo.com', '4153828582', '141 W Addison St', '2003-02-14', 'Female', '2500000'),
('EM011', 'Virgilio Armando', 'virgilioarmando@hallo.com', '7033009464', '8305 State 140 Rte S', '2002-06-03', 'Male', '2500000'),
('EM012', 'Sei Asagiri', 'seiasagiri@hallo.com', '8068877725', '8874 Quackenbush Spring Rd', '2003-09-19', 'Male', '2500000'),
('EM013', 'Alma Armas', 'almaarmas@hallo.com', '2608680349', '3403 22nd Way NE', '2002-05-07', 'Female', '2500000'),
('EM014', 'Stella Hoshii', 'stellahoshii@hallo.com', '4043701232', '1005 Lincoln Ave', '2002-01-30', 'Female', '2500000'),
('EM015', 'Donovan Dawson', 'donovandawson@hallo.com', '9568985503', '1131 Wolf Log Rd', '2002-03-11', 'Male', '2500000'),
('EM016', 'Ingram McDougal', 'ingrammcdougal@hallo.com', '2196626064', '18 Nichols Ln', '2002-06-18', 'Male', '2500000'),
('EM017', 'Jamie Jameson', 'jamiejameson@hallo.com', '7073755167', '1607 N Queen St', '2001-10-14', 'Male', '2500000'),
('EM018', 'Kurow Lenore', 'kurowlenore@hallo.com', '3058073120', '5521 Joshua St', '2002-07-23', 'Female', '2500000'),
('EM019', 'Kira Miki', 'kiramiki@hallo.com', '5207616619', '130 Jones St', '2002-03-03', 'Female', '2500000'),
('EM020', 'Nicole Chen', 'nicolechen@hallo.com', '7078170877', '2808 Arcadia Ave', '2003-11-28', 'Female', '2500000'),
('EM021', 'Deal Albert', 'dealalbert@hallo.com', '2098084032', '1001 E Silver St', '2002-07-01', 'Male', '2500000'),
('EM022', 'Alisa Amelia', 'alisaamelia@hallo.com', '5172525823', '11443 Danube Ave', '2004-12-04', 'Female', '1000000'),
('EM023', 'Brendan Bardell', 'brendanbardell@hallo.com', '5864677039', '8435 W Ceylon Rd', '2004-05-15', 'Male', '100000'),
('EM024', 'Federico Caruso', 'federicocaruso@hallo.com', '5709004365', '2008 Parkway Ave', '2004-08-16', 'Male', '1000000'),
('EM025', 'Gina Dickinson', 'ginadickinson@hallo.com', '6193506500', '212 N 11th St', '2004-11-03', 'Female', '1000000');

SELECT * FROM Employee
ROLLBACK

--MedicineType medicinetypeid medicine name
BEGIN TRAN

INSERT INTO MedicineType VALUES
('CT001', 'Aspirin'),
('CT002', 'Ketoconazole'),
('CT003', 'Ibuprofen'),
('CT004', 'Hydrocodone'),
('CT005', 'Oxycodone'),
('CT006', 'Xanax'),
('CT007', 'Codeine'),
('CT008', 'Tylenol'),
('CT009', 'Prozac'),
('CT010', 'Panadol'),
('CT011', 'Antino'),
('CT012', 'Milanta'),
('CT013', 'Promag'),
('CT014', 'Nystatin'),
('CT015', 'Natur-E');

SELECT * FROM MedicineType
ROLLBACK

--Vendor vendorid, vendorname, vendorphonenumber, vendoraddress, vendoremail, vendorestablishedyear

BEGIN TRAN
INSERT INTO Vendor VALUES
('VN001', 'Madison St. Medical Supply', '0887604693', '97 Yangan Drive', 'madisonhealthsupply@hallo.com', '1980-04-13'),
('VN002', 'Amazing Choice Health', '0247614333', '23 Elizabeth Street', 'amazingchoicehealth@hallo.com', '1982-01-28'),
('VN003', 'Phillips Pharmaceuticals', '0240834066', '71 Carolina Park Road', 'phillipspharma@hallo.com', '1991-01-01' ),
('VN004', 'CrossPoint Medical Supplier', '0740388073', '93 Mildura Street', 'crosspointmedsupply@hallo.com', '1988-12-31' ),
('VN005', 'Intelligent Health Inc', '0362556566', '5 Rimbanda Road', 'intelligenthealth@hallo.com', '1999-05-25' ),
('VN006', 'Express Laboratory', '0887322951', '25 Cherry Grove', 'expresslab@hallo.com', '2001-03-18'),
('VN007', 'Medtech', '0883695875', '74 Ashton Road', 'medtech@hallo.com', '2001-07-14' ),
('VN008', 'Webster Medical Supplies', '0740330462', '46 Boland Drive', 'webstermedsupply@hallo.com', '1984-09-18' ),
('VN009', 'Sable Medical Institute', '0745498550', '98 Seaview Court', 'sablemedinstitute@hallo.com', '1985-08-16'),
('VN010', 'Majesty Medical Supply', '0261727253', '28 Baker Street', 'majestymedsupply@hallo.com', '1989-01-30'),
('VN011', 'Hawthorne Health Corp', '0882277894', '30 Frouds Road', 'hawthornehealthcorp@hallo.com', '1982-09-11'),
('VN012', 'VulcanMed Research', '0890750478', '55 Sullivan Court', 'vulcanmedreasearch@hallo.com', '1987-02-03' ),
('VN013', 'Patriot Medical Supply Co', '0882192190', '15 Norton Street', 'patriotmedsupply@hallo.com', '1980-05-19'),
('VN014', 'Cawthorne Hospital Supplies', '0267461516', '97 McDowall Street', 'cawthornehospitalsupply@hallo.com', '1981-09-09'),
('VN015', 'Green Earth Medical', '0733720319', '10 Healy Road', 'greenearthmed@hallo.com', '1994-11-22');
SELECT * FROM Vendor
ROLLBACK

--Medicine medid, medtypeid, medname, medprice, meddesc, medstock
BEGIN TRAN
INSERT INTO Medicine VALUES
('MD001', 'CT001', 'Aspirin', '80000', 'reduce fever and relieve mild to moderate pain', '100'),
('MD002', 'CT002', 'Ketoconazole', '28000', 'used to treat skin infections caused by a fungus (yeast)', '100'),
('MD003', 'CT003', 'Ibuprofen', '88000', 'used to reduce fever and to relieve minor aches and pain', '100'),
('MD004', 'CT004', 'Hydrocodone', '61000', 'used to relieve severe pain', '100'),
('MD005', 'CT005', 'Oxycodone', '38000', 'used to treat severe pain', '100'),
('MD006', 'CT006', 'Xanax', '28000', 'used to treat anxiety and panic disorders', '100'),
('MD007', 'CT007', 'Codeine', '53000', 'used to treat pain', '100'),
('MD008', 'CT008', 'Tylenol', '83000', ' used to treat mild to moderate pain', '100'),
('MD009', 'CT009', 'Prozac', '91000', 'used to treat depression, and also sometimes obsessive compulsive disorder and bulimia', '100'),
('MD010', 'CT010', 'Panadol', '66000', 'used for the temporary relief of pain', '100'),
('MD011', 'CT011', 'Antino', '95000', 'used for cold, allergy, hay fever and other conditions', '100'),
('MD012', 'CT012', 'Milanta','23000', 'used to treat the symptoms of too much stomach acid', '100'),
('MD013', 'CT013', 'Promag', '73000', 'used to relieve ulcer, neutralized and protect your gastric longer from gastric acid', '100'),
('MD014', 'CT014', 'Nystatin', '28000', 'used to treat or prevent infections caused by a fungus (or yeast)', '100'),
('MD015', 'CT015', 'Natur-E', '32000', 'used as an anti-oxydant', '100');
SELECT * FROM Medicine
ROLLBACK

--customer custid, custname, custphonenumber, custaddress, custgender, custemail, custpassword, custDOB
BEGIN TRAN
INSERT INTO Customer VALUES
('CU001', 'Benjamin Johnson', '01632960752', '60 High St', 'Male', 'benjaminjohnson@hallo.com', 'benjamin314', '2000-03-21'),
('CU002', 'Karen Simpson', '01632960105', '21 Ermin Street', 'Female', 'karensimpson@hallo.com', 'karen339', '2000-12-31'),
('CU003', 'Peter Bennet', '01632960381', ' 28 Prestwick Road', 'Male', 'peterbennet@hallo.com', 'peter261', '1999-04-16'),
('CU004', 'Graham Baines', '01632960303', '6 Shore Street', 'Male', 'grahambaines@hallo.com', 'graham826', '1998-08-26'),
('CU005', 'Charlotte Butler', '01632960907', '77 Overton Circle', 'Female', 'charlottebuttler@hallo.com', 'charlotte869', '1997-08-06'),
('CU006', 'Neal Briggs', '01632960732', '2 Southend Avenue', 'Male', 'nealbriggs@hallo.com', 'neal911', '2001-09-11'),
('CU007', 'Maureen Corrie', '01214960318', '15 Sutton Wick Lane', 'Female', 'maureencorrie@hallo.com', 'maureen295', '2000-05-09'),
('CU008', 'Emillie Evans', '01214960291', '48 Park Avenue', 'Female', 'emillieevans@hallo.com', 'emillie888', '1998-09-08'),
('CU009', 'Butler Jones', '01214960936', '29 Caradon Hill', 'Male', 'butlerjones@hallo.com', 'butler680', '2001-06-08'),
('CU010', 'Aubrey Taylor', '01214960066', '37 Jesmond Rd', 'Female', 'aubreytaylor@hallo.com', 'aubrey200', '2000-02-02'),
('CU011', 'John Tuck', '01214960849', '60 Crescent Avenue', 'Male', 'johntuck@hallo.com', 'john650', '2000-06-15'),
('CU012', 'Jason Smith', '01214960889', '63 Friar Street', 'Male', 'jasonsmith@hallo.com', 'jason775', '2000-07-29'),
('CU013', 'Jeremy Croft', '02079460418', '40 Ings Lane', 'Male', 'jeremycroft@hallo.com', 'jeremy590', '1998-04-22'),
('CU014', 'Marylin Haigh', '02079460239', ' 92 Prestwick Road', 'Female', 'marylinhaigh@hallo.com', 'jeremy338', '2003-03-08'),
('CU015', 'Tabitha Nichols', '02079460287', '86 Mounthoolie Lane', 'Female', 'tabithanichols@hallo.com', 'tabitha318', '2001-03-18');
SELECT * FROM Customer
ROLLBACK

--transaction
--purchase transaction purchtransID, employeeID, vendorID, transactiondate

BEGIN TRAN
INSERT INTO PurchaseTransaction VALUES
('PC001', 'EM001', 'VN001', '2021-04-01'),
('PC002', 'EM002', 'VN002', '2021-03-02'),
('PC003', 'EM003', 'VN003', '2021-07-03'),
('PC004', 'EM004', 'VN004', '2021-01-04'),
('PC005', 'EM005', 'VN005', '2021-12-05'),
('PC006', 'EM006', 'VN006', '2021-04-06'),
('PC007', 'EM007', 'VN007', '2021-06-07'),
('PC008', 'EM008', 'VN008', '2021-01-08'),
('PC009', 'EM009', 'VN009', '2021-09-09'),
('PC010', 'EM010', 'VN010', '2021-11-10'),
('PC011', 'EM011', 'VN011', '2021-03-11'),
('PC012', 'EM012', 'VN012', '2021-02-12'),
('PC013', 'EM013', 'VN013', '2021-02-13'),
('PC014', 'EM014', 'VN014', '2021-08-14'),
('PC015', 'EM015', 'VN015', '2021-11-15'),
('PC016', 'EM016', 'VN015', '2021-05-16'),
('PC017', 'EM017', 'VN007', '2021-02-17'),
('PC018', 'EM018', 'VN013', '2021-04-18'),
('PC019', 'EM019', 'VN001', '2021-09-19'),
('PC020', 'EM020', 'VN002', '2021-08-20'),
('PC021', 'EM021', 'VN007', '2021-04-21'),
('PC022', 'EM022', 'VN010', '2021-06-22'),
('PC023', 'EM023', 'VN002', '2021-03-23'),
('PC024', 'EM024', 'VN013', '2021-12-24'),
('PC025', 'EM025', 'VN008', '2021-12-25');
SELECT * FROM PurchaseTransaction
ROLLBACK

--sales transaction saletransid, employeeid, custid, transdate
BEGIN TRAN
INSERT INTO SalesTransaction VALUES
('SL001', 'EM001', 'CU001', '2021-04-01'),
('SL002', 'EM002', 'CU002', '2021-03-02'),
('SL003', 'EM003', 'CU003', '2021-07-03'),
('SL004', 'EM004', 'CU004', '2021-01-04'),
('SL005', 'EM005', 'CU005', '2021-12-05'),
('SL006', 'EM006', 'CU006', '2021-04-06'),
('SL007', 'EM007', 'CU007', '2021-06-07'),
('SL008', 'EM008', 'CU008', '2021-01-08'),
('SL009', 'EM009', 'CU009', '2021-09-09'),
('SL010', 'EM010', 'CU010', '2021-11-10'),
('SL011', 'EM011', 'CU011', '2021-03-11'),
('SL012', 'EM012', 'CU012', '2021-02-12'),
('SL013', 'EM013', 'CU013', '2021-02-13'),
('SL014', 'EM014', 'CU014', '2021-08-14'),
('SL015', 'EM015', 'CU015', '2021-11-15'),
('SL016', 'EM016', 'CU009', '2021-05-16'),
('SL017', 'EM017', 'CU002', '2021-02-17'),
('SL018', 'EM018', 'CU005', '2021-04-18'),
('SL019', 'EM019', 'CU002', '2021-09-19'),
('SL020', 'EM020', 'CU011', '2021-08-20'),
('SL021', 'EM021', 'CU009', '2021-04-21'),
('SL022', 'EM022', 'CU008', '2021-06-22'),
('SL023', 'EM023', 'CU003', '2021-03-23'),
('SL024', 'EM024', 'CU011', '2021-12-24'),
('SL025', 'EM025', 'CU001', '2021-12-25');
SELECT * FROM SalesTransaction
ROLLBACK

--transaction detail
--purchase detail purchtransid, medicineid, quantity
BEGIN TRAN
INSERT INTO PurchaseDetail VALUES
('PC001', 'MD001', '8'),
('PC002', 'MD002', '9'),
('PC003', 'MD003', '10'),
('PC004', 'MD004', '7'),
('PC005', 'MD005', '2'),
('PC006', 'MD006', '7'),
('PC007', 'MD007', '9'),
('PC008', 'MD008', '1'),
('PC009', 'MD009', '10'),
('PC010', 'MD010', '7'),
('PC011', 'MD011', '1'),
('PC012', 'MD012', '3'),
('PC013', 'MD013', '2'),
('PC014', 'MD014', '1'),
('PC015', 'MD015', '9'),
('PC016', 'MD008', '1'),
('PC017', 'MD007', '9'),
('PC018', 'MD012', '5'),
('PC019', 'MD007', '1'),
('PC020', 'MD014', '7'),
('PC021', 'MD011', '6'),
('PC022', 'MD004', '3'),
('PC023', 'MD006', '9'),
('PC024', 'MD009', '6'),
('PC025', 'MD014', '10');
SELECT * FROM PurchaseDetail
ROLLBACK

--sales detail salestransID, medid,qty
BEGIN TRAN
INSERT INTO SalesDetail VALUES
('SL001', 'MD001', '8'),
('SL002', 'MD002', '9'),
('SL003', 'MD003', '10'),
('SL004', 'MD004', '7'),
('SL005', 'MD005', '2'),
('SL006', 'MD006', '7'),
('SL007', 'MD007', '9'),
('SL008', 'MD008', '1'),
('SL009', 'MD009', '10'),
('SL010', 'MD010', '7'),
('SL011', 'MD011', '1'),
('SL012', 'MD012', '3'),
('SL013', 'MD013', '2'),
('SL014', 'MD014', '1'),
('SL015', 'MD015', '9'),
('SL016', 'MD008', '1'),
('SL017', 'MD007', '9'),
('SL018', 'MD012', '5'),
('SL019', 'MD007', '1'),
('SL020', 'MD014', '7'),
('SL021', 'MD011', '6'),
('SL022', 'MD004', '3'),
('SL023', 'MD006', '9'),
('SL024', 'MD009', '6'),
('SL025', 'MD014', '10');
SELECT * FROM SalesDetail
ROLLBACK