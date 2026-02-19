create table customers
(
customer_id int  ,
first_name varchar (20) not null,
last_name varchar(20)not null,
email varchar(50)not null,
phone varchar(15) unique,
state varchar(15),
city varchar(15)not null,
street varchar(30) not null,
zip_code varchar(5) ,

constraint customer_id_pk primary key(customer_id)
);

insert into customers values
(1,'Ahmed','Ali','ahmed@gmail.com','01011111111','Cairo','Nasr City','Street 1','12345'),
(2,'Sara','Hassan','sara@gmail.com','01022222222','Giza','Dokki','Street 2','54321'),
(3,'Omar','Khaled','omar@gmail.com','01033333333','Alex','Smouha','Street 3','67890'),
(4,'Mona','Adel','mona@gmail.com',null,'Cairo','Maadi','Street 4','11223'),
(5,'Youssef','Sameh','youssef@gmail.com','01055555555','Giza','Haram','Street 5','33445');

select * from customers;

create table categories
(
categories_id int,
categories_name varchar(20),

constraint categories_id_pk primary key(categories_id)
);

insert into categories values
(1,'Laptops'),
(2,'Mobiles'),
(3,'Accessories'),
(4,'Tablets');
select * from categories;

create table brands
(
brands_id int,
brands_name varchar(20),

constraint brands_id_pk primary key(brands_id)
);

insert into brands values
(1,'HP'),
(2,'Dell'),
(3,'Apple'),
(4,'Samsung'),
(5,'Lenovo');

select * from brands;

create table staff 
(
staff_id int,
first_name varchar(20)not null,
last_name varchar(20) not null,
salary numeric(7,2),
hire_date date,
constraint staff_id_pk primary key(staff_id),
constraint salary_ch check(salary between 3000 and 15000)
);

insert into staff values
(1,'Ali','Mahmoud',5000,'2022-01-10'),
(2,'Nour','Tarek',7000,'2021-05-15'),
(3,'Hany','Adel',4500,'2023-03-20'),
(4,'Salma','Mostafa',9000,'2020-11-01'),
(5,'Karim','Hossam',6000,'2024-02-01');

select * from staff;

create table products
(
    product_id int not null,
    product_name varchar(20),
    modell int,
    brand_id int
);

insert into products values
(1,'phone',2020,2),
(2,'tab',2014,1),
(3,'lap',2025,3),
(4,'tv',2024,4);
alter table products 
add constraint product_pk primary key (product_id);
alter table products 
add constraint brand_product_fk 
foreign key (brand_id)
references brands (brands_id);
select * from products;
insert into products values
(5,'HP Laptop',2022,1);
