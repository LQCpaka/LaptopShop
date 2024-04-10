CREATE DATABASE LaptopShop


/*=========================================
				Product
===========================================*/
USE LaptopShop


CREATE TABLE TypeProductCategory (
    TypeProductID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	NameTypeProduct VARCHAR (250),
	
);


CREATE TABLE ProducerProductCategory (
    ProducerID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	NameProducer VARCHAR (250),
);


CREATE TABLE Products (
    ProductID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProducerID INT NOT NULL,
	TypeProductID INT NOT NULL,
    NameProduct VARCHAR(100) NOT NULL,
	ProductSpecs TEXT,
    DescriptionProduct NVARCHAR(250),
    Price DECIMAL(10, 2) NOT NULL,
	Discount DECIMAL(5,2) DEFAULT 0,
    StockQuantity INT NOT NULL,
    ImageURL VARCHAR(255),
    Featured INT DEFAULT 0,
	UpdateDate DATE,

	FOREIGN KEY (ProducerID) REFERENCES ProducerProductCategory(ProducerID),
	FOREIGN KEY (TypeProductID) REFERENCES TypeProductCategory(TypeProductID)
);


/*=========================================
				Customer
===========================================*/

CREATE TABLE UserAccounts (
    UserID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	UserEmail VARCHAR (250) NOT NULL,
	UserPassword VARCHAR (250) NOT NULL,
	UserPhoneNumber VARCHAR (15) NOT NULL,
	UserAddress VARCHAR (250) NOT NULL,
	UserType  nvarchar (255) NOT NULL CHECK (UserType IN('admin', 'user')) DEFAULT 'user'
);

/*======================== CART =========================*/
CREATE TABLE UserOrders (
    OrderID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    UserID INT NOT NULL,
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus VARCHAR(50) NOT NULL DEFAULT 'Đang Chờ Xử Lý',
    FOREIGN KEY (UserID) REFERENCES UserAccounts(UserID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES UserOrders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



 /*===============================================================
					INSERT DATA INTO TABLE
=================================================================*/


USE LaptopShop

/*======================== Type Product (Laptop, keyboard, mouse, ... etc) =========================*/

INSERT INTO TypeProductCategory(NameTypeProduct) VALUES ('LAPTOP')
INSERT INTO TypeProductCategory(NameTypeProduct) VALUES ('KEYBOARD')
INSERT INTO TypeProductCategory(NameTypeProduct) VALUES ('MOUSE')


/*======================== Producer (Laptop, keyboard, mouse, ... etc) =========================*/

INSERT INTO ProducerProductCategory (NameProducer) VALUES ('ASUS');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('ACER');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('DELL');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('HP');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('LENOVO');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('LEGION');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('ZOWIE');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('RAZER');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('LOGITECH');
INSERT INTO ProducerProductCategory (NameProducer) VALUES ('EDRA');


/*======================== PRODUCT =========================*/

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(1,2,'Acer Nitro 5 Tiger A1295','CPU: Core i711400 | Graphic Card: RTX3050ti | Ram: 8GB', N'Sản phẩm nổi bật vừa được đưa lên cộng đồng dạo gần đây', 10000000, 0, 100, 'acerA1295.jpg',1,'2024-04-07');
INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(1,2,'ASUS PREDATOR A9992','CPU: Core i154000 | Graphic Card: RTX4060 | Ram: 32GB', N'Con Quái Vật Mới Của Giới Công Nghệ', 22000000, 0, 100, 'asusA9992.jpg',1,'2024-04-07');

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(1,3,'ASUS PREDATOR A13123','CPU: Core i154000 | Graphic Card: RTX3060 | Ram: 32GB', N'Con Quái Vật Mới Của Giới Công Nghệ', 22000000, 0, 100, 'asusA9992.jpg',1,'2024-04-07');

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(3,1,'DELL','CPU: Core i154000 | Graphic Card: RTX4060 | Ram: 64GB', N'Con Quái Vật Mới Của Giới Công Nghệ', 22000000, 0, 100, 'asusA9992.jpg',1,'2024-04-07');

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(7,3,'ZOWIE EC2','DPI: 11 | Size: M | Driver: No | Wireless: Yes' , N'Chuột thích hợp hầu như cho mọi phân khúc', 6000000, 0, 10, 'zowieEC2.jpg',1,'2024-04-07');
INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(8,2,'Akko Tokyo World Tour','Keycap: DS | Wireless: Yess | Size: 75%', N'Sản phẩm nổi bật vừa được đưa lên cộng đồng dạo gần đây', 6900000, 0, 100, 'akkoTokyoW.jpg',1,'2024-04-07');


/*======================== PRODUCT REFERENCE FROM GEARVN =========================*/
INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(1,3,'Laptop ASUS Expertbook B1 B1402CBA NK1535W','CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', 
N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.'
, 22000000, 0, 100, 'asusB1402CBA.jpg',3, GETDATE());

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(1,3,'Laptop gaming ASUS ROG Zephyrus G16 GU605MV QR196WS','CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', 
N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.'
, 69000000, 0, 100, 'asusGU605MV.jpg',3, GETDATE());

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(5,3,'Laptop gaming Lenovo LOQ 15IRH8 82XV00Q4VN','CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', 
N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.'
, 44000000, 0, 100, '82XV00Q4VN.jpg',3, GETDATE());

INSERT INTO 
Products (ProducerID,TypeProductID,NameProduct,ProductSpecs,DescriptionProduct,Price,Discount,StockQuantity,ImageURL,Featured,UpdateDate) 
VALUES 
(3,3,'Laptop Dell Inspiron 15 N3530 I3U085W11BLU','CPU: Intel® Core™ i3-1215U Processor 1.2 GHz | Graphic Card: Intel® UHD Graphics | Ram: 8GB DDR4 3200MHz', 
N'Luôn giữ vững vị thế của mình trong ngành laptop văn phòng, ASUS liên tục cố gắng hoàn thiện và cải tiến sản phẩm của mình để phù hợp với nhu cầu sử dụng của người dùng.'
, 55000000, 0, 100, 'I3U085W11BLU.jpg',3, GETDATE());
SELeCT * FROM Products WHERE Featured = 3;