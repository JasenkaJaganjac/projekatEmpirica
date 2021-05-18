package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="products")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(  name = "product_name" )
	private String name;
	
	@Column( length = 2000, name = "product_description" )
	private String description;
	
	@Column(name = "product_image_URL")
	private String imageURL;
	
	@Column(name = "product_price")
	private Double originalPrice;
	
	@Column(name = "reduced_price")
	private Double reducedPrice;
	
	@Column(name = "percentage")
	private Double percentage;
	
	@Column(name = "is_in_stock",columnDefinition="boolean default true")
	private Boolean isInStock;
	
	@Column(name = "is_new", columnDefinition="boolean default true")
	private Boolean isNew;
	
	public Product() {
	}

	public Product(String name, String description, String imageURL, Double originalPrice, Double reducedPrice, Double percentage, Boolean isInStock, Boolean isNew	) {
		super();
		this.name = name;
		this.description = description;
		this.imageURL = imageURL;
		this.originalPrice = originalPrice;
		this.percentage = percentage;
		this.isInStock = isInStock;
		this.isNew = isNew;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
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

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public Double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(Double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public Double getReducedPrice() {
		return reducedPrice;
	}

	public void setReducedPrice(Double reducedPrice) {
		this.reducedPrice = reducedPrice;
	}

	public Double getPercentage() {
		return percentage;
	}

	public void setPercentage(Double percentage) {
		this.percentage = percentage;
	}

	public Boolean getIsInStock() {
		return isInStock;
	}

	public void setIsInStock(Boolean isInStock) {
		this.isInStock = isInStock;
	}

	public Boolean getIsNew() {
		return isNew;
	}

	public void setIsNew(Boolean isNew) {
		this.isNew = isNew;
	}

	

	

}
