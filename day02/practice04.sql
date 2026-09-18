DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    stock INT DEFAULT 0,
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (name, price, stock, category)
VALUES
('키보드', 30000, 10, '컴퓨터주변기기'),
('마우스', 15000, 20, '컴퓨터주변기기'),
('모니터', 250000, 5, '디스플레이'),
('USB 메모리', 12000, 30, '저장장치'),
('노트북 거치대', 22000, 8, '액세서리'),
('웹캠', 45000, 12, '컴퓨터주변기기'),
('외장하드', 89000, 7, '저장장치'),
('노트북 파우치', 18000, 15, '액세서리'),
('HDMI 케이블', 9000, 40, '케이블'),
('무선 이어폰', 79000, 6, '음향기기');

select * from products;
