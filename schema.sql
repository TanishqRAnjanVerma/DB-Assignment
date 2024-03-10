create database ecom;
use database ecom;
create table product_category(
    id int Primary Key,
    name varchar(255) Not Null Unique,
    desc text,
    created_at datetime,
    modified_at datetime,
    deleted_at datetime, 

);

create table product_inventory(
    id int Primary Key,
    quantity int ,
    created_at datetime,
    modified_at datetime,
    deleted_at datetime, 

);

create table discount(
    id int Primary Key,
    name varchar(255) Not Null Unique,
    desc text,
    discount_percent decimal(3,1),
    active boolean,
    created_at datetime,
    modified_at datetime,
    deleted_at datetime, 

);


create table product(
    id int Primary Key,
    name varchar(255) Not Null Unique,
    desc text,
    sku varchar,
    category_id int,
    inventory_id int,  
    discount_percent decimal(3,1),
    active boolean,
    price decimal(6,2),
    discount_id int,
    created_at datetime,
    modified_at datetime,
    deleted_at datetime, 
     FOREIGN KEY (category_id) REFERENCES product_category(id),
     FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
     FOREIGN KEY (discount_id) REFERENCES discount(id),
)

