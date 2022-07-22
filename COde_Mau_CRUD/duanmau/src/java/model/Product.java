/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author TUNGDUONG
 */
public class Product {
    private int productID;
    private String productDescription;
    private String productImage;
    private String productName;
    private double productPrice;
  
    public Product() {
    }

    public Product(int productID, String productDescription, String productImage, String productName, double productPrice) {
        this.productID = productID;
        this.productDescription = productDescription;
        this.productImage = productImage;
        this.productName = productName;
        this.productPrice = productPrice;
     
    }


    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }


 

    

  
}
