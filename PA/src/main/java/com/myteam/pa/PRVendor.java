package com.myteam.pa;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
public class PRVendor
		extends
			org.drools.persistence.jpa.marshaller.VariableEntity
		implements
			java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "PRVENDOR_ID_GENERATOR")
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "PRVENDOR_ID_GENERATOR", sequenceName = "PRVENDOR_ID_SEQ")
	private java.lang.Long id;

	private String vendorname;

	private String address;

	private Double price;

	public PRVendor() {
	}

	public java.lang.Long getId() {
		return this.id;
	}

	public void setId(java.lang.Long id) {
		this.id = id;
	}

	public java.lang.String getVendorname() {
		return this.vendorname;
	}

	public void setVendorname(java.lang.String vendorname) {
		this.vendorname = vendorname;
	}

	public java.lang.String getAddress() {
		return this.address;
	}

	public void setAddress(java.lang.String address) {
		this.address = address;
	}

	public java.lang.Double getPrice() {
		return this.price;
	}

	public void setPrice(java.lang.Double price) {
		this.price = price;
	}

	public PRVendor(java.lang.Long id, java.lang.String vendorname,
			java.lang.String address, java.lang.Double price) {
		this.id = id;
		this.vendorname = vendorname;
		this.address = address;
		this.price = price;
	}

}