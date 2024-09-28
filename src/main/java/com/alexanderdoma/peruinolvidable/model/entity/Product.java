package com.alexanderdoma.peruinolvidable.model.entity;

import java.sql.Timestamp;

public class Product {
    private Integer id;
    private String name;
    private String description;
    private Double price;
    private String brand;
    private int stock;
    private boolean isActive;
    private String image;
    private Timestamp created_at;
    private Category category;
    
    public Product() {
    }

    public Product(Integer id, String name, String description, Double price, String brand, int stock, boolean isActive, String image, Timestamp created_at, Category category) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.brand = brand;
        this.stock = stock;
        this.isActive = isActive;
        this.image = image;
        this.created_at = created_at;
        this.category = category;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public boolean getIsActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Timestamp getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", brand=" + brand + ", stock=" + stock + ", isActive=" + isActive + ", image=" + image + ", created_at=" + created_at + ", category=" + category + '}';
    }
}
