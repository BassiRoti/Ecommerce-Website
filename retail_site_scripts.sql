
use RETAILSITE;

create table Product
(ProductID int Primary Key, Name varchar(100), Quantity int, Description varchar(255), ReviewID int, StatusID int, Expiry Date, WarrantyID int);
alter table Product
add Foreign Key (ReviewID) references Reviews(ReviewID);
alter table Product
add Foreign Key (StatusID) references Status(StatusID);
alter table Product
add Foreign Key (WarrantyID) references Warranty(WarrantyID);

create table Customer
(CustomerID int Primary Key, Username varchar(20), PurchaseID int, TypeID int, Status varchar (10), JoinDate Date);
alter table Customer
add Foreign Key (TypeID) references Type(TypeID);

create table Type
(TypeID int Primary Key, TypeName varchar(20));

create table Purchase
(OrderID int Primary Key, CustomerID int, ProductID int, Quantity int, PaymentID int, PurchaseDate Date);
alter table Purchase
add Foreign Key (ProductID) references Product(ProductID);
alter table Purchase
add Foreign Key (CustomerID) references Customer(CustomerID);
alter table Purchase
add Foreign Key (PaymentID) references Payment(PaymentID);


create table Payment
(PaymentID int Primary Key, ProductID int, CustomerID int, CardName varchar(50), CardNumber varchar(16), Amount decimal(9,2), DateShipping date);
alter table Payment
add Foreign Key (ProductID) references Product(ProductID);
alter table Payment
add Foreign Key (CustomerID) references Customer(CustomerID);

create table Reviews
(ReviewID int Primary Key, ProductID int, CustomerID int, Rating int, Review varchar(255), RDate date);
alter table Reviews
add Foreign Key (CustomerID) references Customer(CustomerID);

create table Status
(StatusID int Primary Key, StatusKey varchar(25));

create table Request
(RequestID int Primary Key, ProductID int, ExpectedDate date, Status varchar(10));
alter table Request
add Foreign Key (ProductID) references Product(ProductID);

create table Shipping
(ShippingID int Primary Key, PaymentID int, DateSent date, DateReceived date, Status varchar(10), Address varchar(255));
alter table Shipping
add Foreign Key (PaymentID) references Payment(PaymentID);

create table Manufacturer
(ManufactureID int Primary Key, ManufacturerName varchar(50), ProductID int, Details varchar(255));
alter table Manufacturer
add Foreign Key (ProductID) references Product(ProductID);

create table UserInfo
(Username varchar(20) primary key, email varchar(100) unique not null, password varchar(20) not null,Name varchar(50), Phone varchar(11));


create table Warranty 
(WarrantyID int Primary Key, ProductID int, Status varchar(10));

--------------------------------------------------------------------------------------

insert into UserInfo values
('alia_jmal2213', 'alia_dd3ajmal@outlook.com', 'w34ddTTej9', 'Alia Ajmal', '03343225764'),
('XXgrundan','robpat@gmail.com','24524ddyy','Rob Patter', '03038776341');

insert into Customer values
(1,'alia_jmal2213', 4, 1, 'Active', '03-03-2023'),
(2, 'XXgrundan', 4, 2, 'Inactive', '03-04-2022');

insert into Type values
(1, 'Private'),
(2, 'Corporate');

insert into Status values
(1, 'Avaiable'),
(2, 'Available'),
(3, 'Can order');

insert into Product values
(1, 'Cartons', 200, '200 per pack. Good quality, Large in Size, 25KG', 22, 3, '09-09-2023', 2),
(2, 'Bottle Caps', 1500, 'Unpainted Bottle Caps - Standard Size', 25, 3, '09-09-2023', 2),
(3, 'Glass Powder', 500, 'NULL', 22, 3, '09-09-2023', 2);

insert into Warranty values
(2, 3, 'Valid');

insert into Reviews values
(22, 2, 2, 4, 'Very good product. Goods were in high quality', '07-02-2023'),
(23, 2, 2, 5, 'Excellent', '09-10-2023'),
(24, 2, 1, 1, 'Terrible. Broken', '08-10-2023'),
(25, 1, 1, 2, 'Poor. Nahi order krna kabhi', '02-04-2023');

insert into Manufacturer values
(2, 'Coca-cola', 2, 'Founded in 19XX, the company produces...');

insert into Payment values
(1, 2, 2, 'Ali Afzl', '6663222200281112', 6630.25, '09-09-2023'),
(5, 3, 2, 'Ali Afzl', '6663222200281112', 6630.25, '09-09-2023');

insert into Purchase values
(360, 2, 2, 650, 1, '09-09-2023');

insert into Shipping values
(53, 5, '09-09-2023', NULL, 'Shipped', '63 STRT JT, LAHORE');

insert into Request values
(42, 1, '08-05-2023', 'Ordered'),
(43, 1, '08-15-2023', 'Ordered'),
(44, 1, '08-05-2023', 'OutofStock');
