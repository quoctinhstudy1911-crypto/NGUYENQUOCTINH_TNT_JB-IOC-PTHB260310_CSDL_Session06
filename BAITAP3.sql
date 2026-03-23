-- Dữ liệu

create table customer (
    id serial primary key,
    name varchar(100),
    email varchar(100),
    phone varchar(20),
    points int
);

-- Yêu cầu 
-- Thêm 7 khách hàng (trong đó có 1 người không có email)
insert into customer (name, email, phone, points) values
('nguyễn văn an', 'an@gmail.com', '0901111111', 100),
('trần thị bình', 'binh@gmail.com', '0902222222', 200),
('lê văn an', 'an2@gmail.com', '0903333333', 150),
('phạm thị dung', null, '0904444444', 80), -- không có email
('hoàng văn em', 'em@gmail.com', '0905555555', 300),
('đỗ thị lan', 'lan@gmail.com', '0906666666', 250),
('nguyễn văn an', 'an3@gmail.com', '0907777777', 180);

-- Truy vấn danh sách tên khách hàng duy nhất (DISTINCT)
select distinct 
    name as "tên khách hàng"
from customer;

-- Tìm các khách hàng chưa có email (IS NULL)
select 
    id as "mã khách hàng",
    name as "tên khách hàng",
    phone as "số điện thoại",
    points as "điểm"
from customer
where email is null;
-- Hiển thị 3 khách hàng có điểm thưởng cao nhất, bỏ qua khách hàng cao điểm nhất (gợi ý: dùng OFFSET)
select 
    id as "mã khách hàng",
    name as "tên khách hàng",
    points as "điểm"
from customer
order by points desc
offset 1
limit 3;
-- Sắp xếp danh sách khách hàng theo tên giảm dần
select 
    id as "mã khách hàng",
    name as "tên khách hàng",
    email as "email",
    phone as "số điện thoại",
    points as "điểm"
from customer
order by name desc;