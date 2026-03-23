-- Dữ liệu
create table orderinfo (
    id serial primary key,
    customer_id int,
    order_date date,
    total numeric(10,2),
    status varchar(20)
);

-- Yêu cầu
-- Thêm 5 đơn hàng mẫu với tổng tiền khác nhau
insert into orderinfo (customer_id, order_date, total, status) values
(1, '2024-10-01', 300000, 'pending'),
(2, '2024-10-10', 700000, 'completed'),
(3, '2024-09-15', 1200000, 'cancelled'),
(4, '2024-10-20', 500000, 'pending'),
(5, '2024-11-05', 900000, 'completed');

-- Truy vấn các đơn hàng có tổng tiền lớn hơn 500,000
select 
    id as "mã đơn hàng",
    customer_id as "mã khách hàng",
    total as "tổng tiền"
from orderinfo
where total > 500000;

-- Truy vấn các đơn hàng có ngày đặt trong tháng 10 năm 2024
select 
    id as "mã đơn hàng",
    customer_id as "mã khách hàng",
    order_date as "ngày đặt",
    total as "tổng tiền"
from orderinfo
where order_date between '2024-10-01' and '2024-10-31';

-- Liệt kê các đơn hàng có trạng thái khác “Completed”
select 
    id as "mã đơn hàng",
    customer_id as "mã khách hàng",
    status as "trạng thái"
from orderinfo
where status <> 'completed';

-- Lấy 2 đơn hàng mới nhất
select 
    id as "mã đơn hàng",
    customer_id as "mã khách hàng",
    order_date as "ngày đặt",
    total as "tổng tiền"
from orderinfo
order by order_date desc
limit 2;