CREATE TABLE SHIPPERS (
    SHIPPER_ID NUMBER,
    CONSTRAINT SHIPPERS_PK PRIMARY KEY(SHIPPER_ID),
    PHONE NVARCHAR2(22)
);

CREATE TABLE CUSTOMERS (
    CUSTOMER_ID NUMBER,
    CONSTRAINT CUSTOMER_PK PRIMARY KEY(CUSTOMER_ID),
    COMPANY_NAME NVARCHAR2(50),
    CONTACT_NAME NVARCHAR2(50),
    CONTACT_TITLE NVARCHAR2(20),
    ADRESS NVARCHAR2(50),
    CITY NVARCHAR2(20),
    REGION NVARCHAR2(20),
    POSTAL_CODE NVARCHAR2(10),
    COUNTRY NVARCHAR2(20),
    PHONE NVARCHAR2(22),
    FAX NVARCHAR2(22)
);

CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID NUMBER,
    CONSTRAINT EMPLOYEE_PK PRIMARY KEY(EMPLOYEE_ID),
    LAST_NAME NVARCHAR2(20),
    FIRST_NAME NVARCHAR2(20),
    TITLE NVARCHAR2(20),
    TITLE_OF_COURTESY NVARCHAR2(20),
    BIRTH_DATE TIMESTAMP,
    HIRE_DATE TIMESTAMP,
    ADDRESS NVARCHAR2(50),
    CITY NVARCHAR2(20),
    REGION NVARCHAR2(20),
    POSTAL_CODE NVARCHAR2(10),
    COUNTRY NVARCHAR2(20),
    HOME_PHONE NVARCHAR2(22),
    EXTENSION NVARCHAR2(20),
    PHOTO BFILE,
    NOTES NVARCHAR2(50),
    REPORTS_TO INT
);

CREATE TABLE SUPPLIERS (
    SUPPLIER_ID NUMBER,
    CONSTRAINT SUPPLIERS_PK PRIMARY KEY(SUPPLIER_ID),
    COMPANY_NAME NVARCHAR2(20),
    CONTACT_NAME NVARCHAR2(20),
    CONTACT_TITLE NVARCHAR2(20),
    ADDRESS NVARCHAR2(50),
    CITY NVARCHAR2(20),
    REGION NVARCHAR2(20),
    POSTAL_CODE NVARCHAR2(10),
    COUNTRY NVARCHAR2(20),
    HOME_PHONE NVARCHAR2(22),
    FAX NVARCHAR2(22),
    HOME_PAGE NVARCHAR2(20)
);

CREATE TABLE CATEGORIES (
    CATEGORY_ID NUMBER,
    CONSTRAINT CATEGORIES_PK PRIMARY KEY(CATEGORY_ID),
    CATEGORY_NAME NVARCHAR2(20),
    DESCRIPTION NVARCHAR2(150),
    PICTURE BFILE
);

CREATE TABLE PRODUCTS (
    PRODUCT_ID NUMBER,
    CONSTRAINT PRODUCTS_PK PRIMARY KEY(PRODUCT_ID),
    PRODUCT_NAME NVARCHAR2(20),
    SUPPLIER_ID NUMBER,
    CONSTRAINT SUPPLIERS_FK FOREIGN KEY (SUPPLIER_ID) REFERENCES SUPPLIERS(SUPPLIER_ID),
    CATEGORY_ID NUMBER,
    CONSTRAINT CATEGORIES_FK FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID),
    QUANTITY_PER_UNIT NVARCHAR2(20),
    UNIT_PRICE NUMBER(19,4),
    UNITSLN_STOCK NUMBER(5),
    UNITS_ON_ORDER NUMBER(5),
    REORDER_LEVEL NUMBER(5),
    DISCONTINUED NUMBER(3)
);

CREATE TABLE ORDERS (
    ORDER_ID NUMBER,
    CONSTRAINT ORDERS_PK PRIMARY KEY(ORDER_ID),
    CUSTOMER_ID NUMBER,
    EMPLOYEE_ID NUMBER,
    CONSTRAINT CUSTOMERS_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    CONSTRAINT EMPLOYEES_FK FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
    REQUIRED_DATE TIMESTAMP,
    SHIPPED_DATE TIMESTAMP,
    SHIP_VIA NUMBER,
    CONSTRAINT SHIPPERS_FK FOREIGN KEY (SHIP_VIA) REFERENCES SHIPPERS(SHIPPER_ID),
    FREIGHT NUMBER(19,4),
    SHIP_NAME NVARCHAR2(20),
    SHIP_ADDRESS NVARCHAR2(50),
    SHIP_CITY NVARCHAR2(20),
    SHIP_REGION NVARCHAR2(20),
    SHIP_POSTAL_CODE NVARCHAR2(10),
    SHIP_COUNTRY NVARCHAR2(20)
);

CREATE TABLE ORDER_DETAILS (
    ORDER_ID NUMBER,
    PRODUCT_ID NUMBER,
    CONSTRAINT ORDERS_FK FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    CONSTRAINT PRODUCTS_FK FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID),
    UNIT_PRICE NUMBER(19,4),
    QUANTITY NUMBER,
    DISCOUNT FLOAT(23)
);