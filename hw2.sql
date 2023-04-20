create table sales
(
	id int primary key auto_increment,
	order_date DATE,
	count_product INT
);


insert into sales(order_date,count_product) values
('2022-01-01',156),
('2022-01-02',180),
('2022-01-03',21),
('2022-01-04',124),
('2022-01-05',341);


select id, 
case
	when count_product < 100 then 'Маленький заказ'
	when count_product between 100 and 300 then 'Средний заказ'
	else 'Большой заказ'
end as 'test'
from sales


create table orders
(
	id int primary key auto_increment,
	employee_id varchar(5) not null,
	amount decimal(5,2) not null,
	order_status varchar(10) not null
)


insert into orders(employee_id,amount,order_status) values
('e03',15.00,'PEN'),
('e01',25.50,'OPEN'),
('e05',100.70,'CLOSED'),
('e02',22.18,'OPEN'),
('e04',9.50,'CANCELLED');


select id,employee_id,amount,order_status,
case
	when order_status = 'OPEN' then 'Order is in open state'
	when order_status = 'CLOSED' then 'Order is closed' 
	when order_status  = 'CANCELLED' then 'Order is cancelled'
end as 'full_order_status'
from orders
