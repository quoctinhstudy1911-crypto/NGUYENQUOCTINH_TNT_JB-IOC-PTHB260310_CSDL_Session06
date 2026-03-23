-- Dữ liệu 
create table employee (
    id serial primary key,
    full_name varchar(100),
    department varchar(50),
    salary numeric(10,2),
    hire_date date
);

-- Yêu cầu:

-- Thêm 6 nhân viên mới

insert into employee (full_name, department, salary, hire_date) values
('nguyễn văn an', 'it', 8000000, '2023-02-10'),
('trần thị bình', 'hr', 7000000, '2022-05-20'),
('lê văn cường', 'it', 9000000, '2023-07-15'),
('phạm thị dung', 'kế toán', 5500000, '2023-03-01'),
('hoàng văn em', 'it', 6000000, '2024-01-10'),
('đỗ thị lan', 'marketing', 5000000, '2023-11-25');

-- Cập nhật mức lương tăng 10% cho nhân viên thuộc phòng IT
update employee
set salary = salary * 1.1
where department = 'it';
-- Xóa nhân viên có mức lương dưới 6,000,000
delete from employee
where salary < 6000000;
-- Liệt kê các nhân viên có tên chứa chữ “An” (không phân biệt hoa thường)
select 
    id as "mã nhân viên",
    full_name as "tên nhân viên",
    department as "phòng ban",
    salary as "lương",
    hire_date as "ngày vào làm"
from employee
where full_name ilike '%an%';
-- Hiển thị các nhân viên có ngày vào làm việc trong khoảng từ '2023-01-01' đến '2023-12-31'

select 
    id as "mã nhân viên",
    full_name as "tên nhân viên",
    department as "phòng ban",
    salary as "lương",
    hire_date as "ngày vào làm"
from employee
where hire_date between '2023-01-01' and '2023-12-31';