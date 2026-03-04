-- Database initialization
CREATE DATABASE fudgeDB;
use fudgeDB;
-- end

-- table definition
-- drop table customers to reset
CREATE TABLE customers (
	id int auto_increment,
	email VARCHAR(100) not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    
    constraint pk_customers_id primary key (id)

);

INSERT into customers (email, first_name, last_name) VALUES (
	'dols@tdcnet.dk', 'Mac', 'Arooni');


drop table vehicles;
CREATE TABLE vehicles (
id int auto_increment,
vin VARCHAR(20) not null,
make VARCHAR(50) not null,
model VARCHAR(50) not null,
last_visit date not null, 
mileage int not null,
customer_id int null,
constraint pk_vehicles_id PRIMARY KEY (id)
);


INSERT INTO vehicles (vin, make, model,mileage,last_visit ) VALUES 
('123456', 'Subaru', 'Outback', 200, '1996-10-13'),
('234567', 'Toyota', 'Camry', 45000, '2023-03-15'),
('345678', 'Ford', 'Mustang', 32000, '2022-11-20'),
('456789', 'Honda', 'Civic', 78000, '2024-01-08'),
('567890', 'Chevrolet', 'Silverado', 95000, '2023-07-22'),
('678901', 'BMW', '3 Series', 21000, '2024-02-14'),
('789012', 'Nissan', 'Altima', 61000, '2023-09-30'),
('890123', 'Jeep', 'Wrangler', 110000, '2022-06-05'),
('901234', 'Hyundai', 'Tucson', 38000, '2023-12-19');

select * FROM vehicles, customers;
alter table vehicles drop column customer_id;
alter table vehicles add column customer_id int not null;
alter table vehicles add constraint u_vehicles_vin unique (vin);
alter table vehicles add constraint ck_vehicles_mileage_gt_or_eq_0 check (mileage >= 0);

insert into vehicles (vin, make, model, mileage, last_visit) values 
('901234', 'Hyundai', 'Tyson', 38000, '2023-12-19');

--

