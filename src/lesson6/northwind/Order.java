package lesson6.northwind;

import java.util.Currency;
import java.util.Date;

public class Order {
    private long orderId;
    private Customer customer;
    private Employee employee;
    private Date requiredDate;
    private Date shippedDate;
    private Shipper shipVia;
    private Currency freight;
    private String shipName;
    private String address;
    private String city;
    private String region;
    private String postalCode;
    private String country;
}
