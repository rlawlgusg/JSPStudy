package com.sist.vo;

public class Product {
	private String productId;		//��ǰ���̵�
	private String pname;			//��ǰ��
	private double unitPrice;			//��ǰ ����
	private String description;		//��ǰ ����
	private String manufacturer;	//������
	private String category;		//�з�
	private int unitInStock;		//��� ��
	private String condition;		//�Ż�ǰ or �߰�ǰ or ���ǰ
	
	private String filename;		//�̹��� ���ϸ�
	private int quantity;			//��ٱ��Ͽ� ���� ����
	
	
	
	
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getUnitInStock() {
		return unitInStock;
	}
	public void setUnitInStock(int unitInStock) {
		this.unitInStock = unitInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
	public Product(String productId, String pname, double unitPrice, String description, String manufacturer,
			String category, int unitInStock, String condition, String filename) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
		this.description = description;
		this.manufacturer = manufacturer;
		this.category = category;
		this.unitInStock = unitInStock;
		this.condition = condition;
		this.filename = filename;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String productId, String pname, double unitPrice) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", pname=" + pname + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitInStock="
				+ unitInStock + ", condition=" + condition + ", filename=" + filename + ", quantity=" + quantity + "]";
	}
	
	
	
}
