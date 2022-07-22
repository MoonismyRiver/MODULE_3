use Quanlibanhang;
INSERT INTO customer 
VALUES (1, 'Minh Quan', 10);
INSERT INTO customer 
VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO customer 
VALUES (3, 'Hong Ha', 50);

INSERT INTO orderTBL(oID,cID,oDate)
VALUES (1, 1, '3-21-2006');
INSERT INTO orderTBL
VALUES (2, 2, 3/23/2006);
INSERT INTO orderTBL
VALUES (3, 1, 3/16/2006);

INSERT INTO Product
VALUES (1, 'May Giat', 3);
INSERT INTO Product
VALUES (2, 'Tu Lanh', 5);
INSERT INTO Product
VALUES (3, 'Dieu Hoa', 7);
INSERT INTO Product
VALUES (4, 'Quat', 1);
INSERT INTO Product
VALUES (5, 'Bep Dien', 2);

INSERT INTO OrderDetail
VALUES (1,1, 3);
INSERT INTO OrderDetail
VALUES (1,3, 7);
INSERT INTO OrderDetail
VALUES (1,4, 2);
INSERT INTO OrderDetail
VALUES (2,1, 1);
INSERT INTO OrderDetail
VALUES (3,1, 8);
INSERT INTO OrderDetail
VALUES (2,5, 4);
