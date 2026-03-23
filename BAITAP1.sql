-- Dữ liệu 
create table product (
    id serial primary key,
    name varchar(100),
    category varchar(50),
    price numeric(10,2),
    stock int
);

-- Thêm 5 sản phẩm vào bảng bằng lệnh INSERT
insert into product (name, category, price, stock) values
('laptop dell', 'điện tử', 15000000, 10),
('iphone 15', 'điện tử', 20000000, 5),
('tai nghe sony', 'điện tử', 3000000, 20),
('bàn học gỗ', 'nội thất', 2500000, 15),
('ghế xoay', 'nội thất', 1800000, 8);

-- Hiển thị danh sách toàn bộ sản phẩm
select 
    id as "mã sản phẩm",
    name as "tên sản phẩm",
    category as "danh mục"
from product;
-- Hiển thị 3 sản phẩm có giá cao nhất
select 
    id as "mã sản phẩm",
    name as "tên sản phẩm",
    price as "giá"
from product
order by price desc
limit 3;
-- Hiển thị các sản phẩm thuộc danh mục “Điện tử” có giá nhỏ hơn 10,000,000
select 
    id as "mã sản phẩm",
    name as "tên sản phẩm",
    category as "danh mục",
    price as "giá"
from product
where category = 'điện tử'
and price < 10000000;
-- Sắp xếp sản phẩm theo số lượng tồn kho tăng dần
select 
    id as "mã sản phẩm",
    name as "tên sản phẩm",
    stock as "tồn kho"
from product
order by stock asc;