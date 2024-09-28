USE GoGame
GO

INSERT INTO Purchase (PurchaseID, StaffID, SupplierID, PurchaseDate)
VALUES
('PU123', 'ST111', 'SU001', '2020-02-12'),
('PU124', 'ST112', 'SU002', '2021-11-15'),
('PU125', 'ST113', 'SU001', '2021-03-17'),
('PU126', 'ST114', 'SU003', '2020-10-16'),
('PU127', 'ST115', 'SU001', '2022-04-09'),
('PU128', 'ST116', 'SU005', '2019-08-12'),
('PU129', 'ST117', 'SU006', '2019-07-28'),
('PU130', 'ST118', 'SU008', '2020-12-22'),
('PU131', 'ST119', 'SU008', '2019-07-18'),
('PU132', 'ST120', 'SU002', '2021-11-11'),
('PU133', 'ST121', 'SU001', '2023-04-17'),
('PU134', 'ST122', 'SU006', '2022-09-18'),
('PU135', 'ST123', 'SU005', '2023-02-01'),
('PU136', 'ST124', 'SU006', '2022-02-22'),
('PU137', 'ST125', 'SU002', '2020-04-18'),
('PU138', 'ST126', 'SU009', '2021-09-11'),
('PU139', 'ST127', 'SU007', '2019-12-20'),
('PU140', 'ST128', 'SU004', '2018-06-28'),
('PU141', 'ST129', 'SU001', '2018-04-11'),
('PU142', 'ST130', 'SU008', '2022-04-12'),
('PU143', 'ST131', 'SU006', '2018-07-18'),
('PU144', 'ST132', 'SU006', '2019-01-27'),
('PU145', 'ST133', 'SU003', '2020-01-22'),
('PU146', 'ST134', 'SU004', '2021-05-13'),
('PU147', 'ST135', 'SU007', '2020-12-11');

INSERT INTO PurchaseDetail
VALUES
	('PU123', 'GA123', 10),
	('PU124', 'GA127', 15),
	('PU125', 'GA130', 20),
	('PU126', 'GA124', 11),
	('PU127', 'GA126', 9),
	('PU128', 'GA125', 6),
	('PU129', 'GA123', 9),
	('PU130', 'GA131', 5),
	('PU131', 'GA124', 11),
	('PU132', 'GA128', 14),
	('PU133', 'GA132', 12),
	('PU134', 'GA124', 7),
	('PU135', 'GA131', 9),
	('PU136', 'GA130', 10),
	('PU137', 'GA129', 6),
	('PU138', 'GA127', 9),
	('PU139', 'GA130', 5),
	('PU140', 'GA131', 7),
	('PU141', 'GA128', 8),
	('PU142', 'GA123', 9),
	('PU143', 'GA127', 11),
    ('PU144', 'GA128', 5),
    ('PU145', 'GA132', 9),
    ('PU146', 'GA131', 7),
    ('PU147', 'GA126',12);

INSERT INTO Sale (SaleID, StaffID, CustomerID, SalesDate)
VALUES
    ('SA111', 'ST111', 'CU121', '2021-02-23'),
    ('SA112', 'ST112', 'CU122', '2021-02-24'),
    ('SA113', 'ST113', 'CU123', '2021-02-24'),
    ('SA114', 'ST114', 'CU124', '2021-02-28'),
    ('SA115', 'ST115', 'CU125', '2021-03-01'),
    ('SA116', 'ST116', 'CU126', '2021-03-03'),
    ('SA117', 'ST117', 'CU127', '2021-03-04'),
    ('SA118', 'ST118', 'CU128', '2021-03-05'),
    ('SA119', 'ST119', 'CU129', '2021-03-06'),
    ('SA120', 'ST120', 'CU130', '2021-03-07'),
    ('SA121', 'ST121', 'CU131', '2021-03-07'),
    ('SA122', 'ST122', 'CU132', '2021-03-08'),
    ('SA123', 'ST123', 'CU133', '2021-03-09'),
    ('SA124', 'ST124', 'CU134', '2021-03-10'),
    ('SA125', 'ST125', 'CU135', '2021-03-12'),
    ('SA126', 'ST126', 'CU136', '2021-03-19'),
    ('SA127', 'ST127', 'CU137', '2021-03-22'),
    ('SA128', 'ST128', 'CU138', '2021-03-22'),
    ('SA129', 'ST129', 'CU139', '2021-03-24'),
    ('SA130', 'ST130', 'CU140', '2021-03-24'),
    ('SA131', 'ST131', 'CU141', '2021-03-24'),
    ('SA132', 'ST132', 'CU142', '2021-03-24'),
    ('SA133', 'ST133', 'CU143', '2021-03-24'),
    ('SA134', 'ST134', 'CU144', '2021-03-25'),
    ('SA135', 'ST135', 'CU145', '2021-03-26');

INSERT INTO SaleDetail 
VALUES 
	('SA111', 'GA123', 3),
	('SA112', 'GA124', 2),
	('SA113' , 'GA125', 4),
    ('SA114', 'GA126', 1),
   	('SA115', 'GA127', 6),
    ('SA116', 'GA125', 3),
    ('SA117', 'GA126', 4),
    ('SA118', 'GA127', 2),
    ('SA119', 'GA128', 1),
    ('SA120', 'GA129', 1),
    ('SA121', 'GA130', 1),
   	('SA122', 'GA131', 6),
  	('SA123', 'GA132', 3),
    ('SA124', 'GA124', 2),
    ('SA125', 'GA125', 2),
	('SA126', 'GA126', 3),
    ('SA127', 'GA123', 3),
    ('SA128', 'GA124', 4),
    ('SA129', 'GA125', 2),
    ('SA130', 'GA126', 4),
    ('SA131', 'GA127', 1),
    ('SA132', 'GA128', 3),
    ('SA133', 'GA129', 5),
    ('SA134', 'GA127', 3),
	('SA135' , 'GA128', 3)

INSERT INTO MsGameType VALUES
   ('GT221', 'RPG'),
   ('GT222', 'Sandbox'),
   ('GT223', 'TPS'),
   ('GT224', 'Adventure'),
   ('GT225', 'Sport'),
   ('GT226', 'MOBA'),
   ('GT227', 'Horror'),
   ('GT228', 'Fighting'),
   ('GT229', 'Simulation'),
   ('GT230', 'FPS');


INSERT INTO MsGame VALUES
   ('GA123', 'GT221', 'Life After', '50.000', '08/12/2018'),
   ('GA124', 'GT222', 'Minekraft', '25.000', '10/11/2018'),
   ('GA125', 'GT223', 'Trooper Shooter', '60.000', '09/11/2017'),
   ('GA126', 'GT226', 'Hill Racing', '100.000', '07/09/2012'),
   ('GA127', 'GT227', 'Tennis', '75.000', '02/08/2013'),
   ('GA128', 'GT228', 'Brawl Moon', '25.000', '03/12/2018'),
   ('GA129', 'GT229', 'Granny', '35.000', '08/11/2017'),
   ('GA130', 'GT230', 'Queen of Fighter', '65.000', '01/06/2006'),
   ('GA131', 'GT221', 'Truck Simulator', '80.000', '05/08/2008'),
   ('GA132', 'GT223', 'Counter Strike', '120.000', '07/11/2000');

INSERT INTO MsSupplier VALUES
('SU001', 'Galaxion', 'Jl. Melati No. 14', '08123456789'),
('SU002', 'Prolution', 'Jl. Kenanga No. 15', '087123456789'),
('SU003', 'Krabby Patty', 'Mampang No. 27', '08512345859'),
('SU004', 'Game No Limit', 'Cirebon Raya No.17', '0897812345678'),
('SU005', 'FitGame', 'Merpati No. 18', '088125678934'),
('SU006', 'Antalas', 'Merpati Timur No. 19', '0218912345'),
('SU007', 'Imperial King', 'Kerinci No. 4', '081489572124'),
('SU008', 'Star Journal', 'Bintaro Sektor 9 Drive No. 3', '08745671983'),
('SU009', 'Wendys Game', 'Bali Plaga No. 5', '0858129845'),
('SU010', 'Dippo Winner', 'Papua Selatan No. 43', '08788125689');

INSERT INTO MsCustomer (CustomerID, CustomerName, CustomerGender, CustomerAddress, CustomerDOB, CustomerPhoneNumber)
VALUES
    ('CU121', 'Michelle Chen', 'Female', 'Jl. Kalimantan 2 No. 2', '2004-06-20', '0812 1255 0118'),
    ('CU122', 'Noer Aini Mery Cahyanti', 'Female', 'Jl. Cendana 10 No. 9', '2005-09-16', '08563199819'),
    ('CU123', 'Zianinnafisah', 'Female', 'Jl. Tulip Raya No. 189', '2001-11-08', '0856015390790'),
    ('CU124', 'Dwi Putri Rahayu', 'Female', 'Jl. Cemara No. 9', '2002-03-20', '085868626597'),
    ('CU125', 'Muhamad Chandra Agoeng Putra', 'Male', 'Jl. Lavender No. 11', '2008-06-12', '085892126872'),
    ('CU126', 'Fazat Fairuzia', 'Male', 'Jl. S. Parman No. 3', '1999-03-09', '089678612129'),
    ('CU127', 'Eddie Darmawan Nata Saputra', 'Male', 'Jl. Sudirman No. 19', '1995-02-15', '085733306573'),
    ('CU128', 'Al Farrel Ghaly Rhaka Sisworo', 'Male', 'Jl. Margahayu 3 No. 1', '2000-09-20', '082312930091'),
    ('CU129', 'Sindi Ardya Pramesti', 'Female', 'Jl. Gurame No. 9', '2001-08-19', '081946852794'),
    ('CU130', 'Muhammad Filza Fadillah', 'Male', 'Jl. Sadewa No. 12', '2007-05-28', '081952425935'),
    ('CU131', 'Mugi Gilang Penalosa', 'Male', 'Jl. Tarumanegara No. 3', '2000-01-08', '085711233268'),
    ('CU132', 'Eva Restu Febryana', 'Female', 'Jl. Anggrek 3 No. 1', '2010-07-18', '082115331215'),
    ('CU133', 'Larasati Anjani Putri Pangarso', 'Female', 'Jl. Cemara No. 30', '2004-02-21', '087809808186'),
    ('CU134', 'Srie Zahra Nur Nadiya Putri Umarsana', 'Female', 'Jl. Nusantara 4 No. 8', '2003-10-19', '085712188108'),
    ('CU135', 'Alexander Marbun', 'Male', 'Jl. Taman Anggrek Raya No. 8', '2002-02-20', '081345369626'),
    ('CU136', 'Detrya Puspita Erlanggi', 'Female', 'Komplek Mangrove No. 12', '2001-12-02', '082115397852'),
    ('CU137', 'Puti Khairunnajwa Amar', 'Female', 'Jl. Arjuna No. 17', '2002-06-10', '081371857200'),
    ('CU138', 'Verel Putra', 'Male', 'Jl. Malioboro No. 28', '2003-06-20', '081236303145'),
    ('CU139', 'Riky Setiawan', 'Male', 'Jl. Nusantara 3 No. 30', '2006-04-29', '087701049922'),
    ('CU140', 'Tiyas Ayu Cahyani', 'Female', 'Jl. Andara 8 No. 5', '2010-09-20', '085726291862'),
    ('CU141', 'Sevila Zahra Nur Mulia', 'Female', 'Jl. Kemanggisan 3 No. 108', '2001-01-01', '081311368402'),
    ('CU142', 'Devina Aurellia', 'Female', 'Jl. Kijang 7B No. 4', '2003-06-13', '082220002345'),
    ('CU143', 'Muhamad Daffaa Abyan', 'Male', 'Jl. Melawai 1A No. 3', '2001-11-15', '081311321668'),
    ('CU144', 'Irwansyah', 'Male', 'Jl. Diponegoro Raya No. 36', '2011-11-11', '085163084490'),
    ('CU145', 'Annisa Cinta Febriana', 'Female', 'Jl. Kenanga 1 No. 6', '2008-08-08', '081315336001');

INSERT INTO MsStaff (StaffID, StaffName, StaffDOB, StaffGender, Salary, StaffPhoneNumber, StaffAddress)
VALUES 
	('ST111', 'Dinda Ayu Tiara', '1998-02-22', 'Female', '500000', '087879243480', 'Jl. Amartha No.18'),
	('ST112', 'Subaedah',	'2000-11-12', 'Female', '500000', '081298457608', 'Jl. Gambir No.51'),
	('ST113', 'Kori Aulia Shaafina', '1994-01-01', 'Female', '300000', '081988477857', 'Jl. Ahmad Yani No.2'),
	('ST114', 'Wibby Nanda Saputra', '2000-12-25', 'Male', '300000', '081294746994', 'Jl.  Senopati No.37'),
	('ST115', 'Biru Zharifah Farhan', '1996-07-15', 'Female', '500000', '089497875481', 'Jl. Sultan Agung No.5'),
	('ST116', 'Fajar Febrio Putra Novlyawan', '1991-03-26', 'Male', '450000', '0812976934605', 'Jl. Delima No.23'),
	('ST117', 'Muhammad Catur Prasetyo', '2000-06-05', 'Male', '450000', '081393476419', 'Jl. Raya Bambu No.3'),
	('ST118', 'Ulfah Azhaar', '1999-08-08', 'Female', '300000', '087791398714', 'Jl. Asia Afrika No.19'),
	('ST119', 'Salsabila Zahran', '2001-04-21', 'Female', '500000', '081228594123', 'Jl. Margonda No.57'),
	('ST120', 'Celviana Anjellia', '1998-01-31', 'Female', '300000', '082249724827', 'Jl. Pasir Jati No.27'),
	('ST121', 'Rio Septyan', '1999-12-22', 'Male', '1000000', '081932134009', 'Jl. Paritan No.9'),
	('ST122', 'Nova Silviana Rachmawaty', '2001-01-30', 'Female', '1500000', '081532559655', 'Jl. Kencana No.12'),
	('ST123', 'Inas Intisar Andaris', '1991-02-14', 'Female', '2000000', '0895366998095', 'Jl. Teratai No.31'),
	('ST124', 'Imam Mutamad', '1990-03-20', 'Male', '1350000', '082987341655', 'Jl. Marinda No.76'),
	('ST125', 'Ana Komala Sintia Dewi', '2000-05-17', 'Female', '750000', '081905686362', 'Jl. Mawar No.11'),
	('ST126', 'Dinda Nuraini', '1997-03-15', 'Female', '4500000', '081290403823', 'Jl. Pintas No.82'),
	('ST127', 'Rani Novitasari', '2000-05-05', 'Female', '8500000', '081901054643', 'Jl. Kortado No.62'),
	('ST128', 'Baiq Yusrina Hidayati', '1996-12-20', 'Male', '2500000', '08953463159635', 'Jl. Gunung Agung No.7'),
	('ST129', 'Ardika Risqi Samudra', '1998-04-13', 'Male', '1700000', '08211093253', 'Jl. Antapani No.29'),
	('ST130', 'Yesi Dwi Lutfia', '2000-08-12', 'Female', '800000', '085733818024', 'Jl. Cihamplas No.43'),
	('ST131', 'Wijayanti Dewi', '1994-02-18', 'Female', '850000', '089513459223', 'Jl. Siliwangi No.96'),
	('ST132', 'Fachrurohman', '1997-07-07', 'Male', '9000000', '087887618210', 'Jl. Dago No.17'),
	('ST133', 'Talitha Nadia Zulfa Irwan', '2000-09-18', 'Female', '12000000', '085648309809', 'Jl. Braga No.56'),
	('ST134', 'Muhamad Akmal Rizal Athariq', '1999-09-10', 'Male', '4000000', '085156830002', 'Jl. Gindai No.22'),
	('ST135', 'Muhamad Aziz Anggara', '1995-06-22', 'Male', '15000000', '081281734594', 'Jl. Teratai Jati No.4');

	SELECT * FROM MsSupplier s join Purchase p ON p.SupplierID = s.SupplierID
	JOIN PurchaseDetail d ON d.PurchaseID = p.PurchaseID
	JOIN MsGame g ON g.GameID = d.GameID
	JOIN MsGameType t on t.GameTypeID = g.GameTypeID
	JOIN SaleDetail sd on sd.GameID = g.GameID
	JOIN Sale sl on sl.SaleID = sd.SaleID
	JOIN MsCustomer c ON c.CustomerID = sl.CustomerID
	JOIN MsStaff st on st.StaffID = sl.StaffID

	