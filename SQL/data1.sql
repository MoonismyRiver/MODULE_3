use quanlibanhang;
INSERT INTO customer 
VALUES (1, 'Minh Quan', 10,'HN');
INSERT INTO customer 
VALUES (2, 'Ngoc Oanh', 20,'HP');
INSERT INTO customer 
VALUES (3, 'Hong Ha', 50,'NB');

INSERT INTO OrderTBL
VALUES (1, 1, 3/23/2006 );
INSERT INTO orderTBL
VALUES (2, 2, 3/23/2006);
INSERT INTO orderTBL
VALUES (3, 1, 3/16/2006);

INSERT INTO Product(code ,name ,price,date_create ,amount)
VALUES (1, 'May Giat', 3000 , '2006-3-23' , 90);
INSERT INTO Product(code ,name ,price,date_create ,amount)
VALUES (2, 'Tu Lanh', 5000 ,'2006-3-23' , 90);
INSERT INTO Product(code ,name ,price,date_create ,amount)
VALUES (13, 'Dieu Hoa', 7000,'2030-3-23', 90);
INSERT INTO Product(code ,name ,price,date_create ,amount)
VALUES (4, 'Quat', 1000,'2006-3-23' , 90);
INSERT INTO Product(code ,name ,price,date_create ,amount)
VALUES (5, 'Bep Dien', 2,'2006-3-23' , 90);

INSERT INTO OrderDetail
VALUES (1,1, 3);
INSERT INTO OrderDetail
VALUES (1,3, 12);
INSERT INTO OrderDetail
VALUES (1,4, 2);
INSERT INTO OrderDetail
VALUES (2,1, 1);
INSERT INTO OrderDetail
VALUES (3,1, 8);
INSERT INTO OrderDetail
VALUES (2,5, 4);