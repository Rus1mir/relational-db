package lesson6.northwind;

import java.util.Currency;

public class Product {
    private long productId;
    private String productName;
    private Supplier supplier;
    private Category category;
    private String quantityPerUnit;
    private Currency unitPrice;
    private int unitslnStock;
    private int unitsOnOrder;
    private int reorderLevel;
    private boolean discontinued;
}
