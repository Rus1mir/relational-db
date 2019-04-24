--Insert 10 records into orders table

INSERT INTO ORDERS
VALUES(1001, 'test1', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1002, 'test2', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1003, 'test3', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1004, 'test4', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1005, 'test5', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1006, 'test6', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1007, 'test7', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1008, 'test8', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1009, 'test9', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

INSERT INTO ORDERS
VALUES(1001, 'test10', 140, TO_DATE('2017/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'),
TO_DATE('2007/05/03 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));

--Insert 10 records into products table

INSERT INTO PRODUCTS VALUES(1012, 'something', 'superfirm', 10);

INSERT INTO PRODUCTS VALUES(1013, 'something', 'superfirm', 20);

INSERT INTO PRODUCTS VALUES(1014, 'something', 'superfirm', 30);

INSERT INTO PRODUCTS VALUES(1015, 'something', 'superfirm', 40);

INSERT INTO PRODUCTS VALUES(1016, 'something', 'superfirm', 50);

INSERT INTO PRODUCTS VALUES(1017, 'something', 'superfirm', 60);

INSERT INTO PRODUCTS VALUES(1018, 'something', 'superfirm', 70);

INSERT INTO PRODUCTS VALUES(1019, 'something', 'superfirm', 80);

INSERT INTO PRODUCTS VALUES(1020, 'something', 'superfirm', 90);

INSERT INTO PRODUCTS VALUES(1021, 'something', 'superfirm', 100);

--Select from products

SELECT * FROM PRODUCTS WHERE COST_PRICE = 50 AND NAME = 'toy123';

SELECT * FROM PRODUCTS WHERE ID = 1005 OR COST_PRICE < 50;

SELECT * FROM PRODUCTS WHERE ID > 1005 AND MANUFACTURER_NAME = 'someManufacturer';

SELECT * FROM PRODUCTS;

--Update products records by criteria

UPDATE PRODUCTS SET MANUFACTURER_NAME = 'china' WHERE NAME = 't-shirt';

--Delete products

DELETE PRODUCTS WHERE ID < 1050;




