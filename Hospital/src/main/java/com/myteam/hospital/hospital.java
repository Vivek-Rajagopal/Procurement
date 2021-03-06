package com.myteam.hospital;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
@javax.persistence.Table(name = "hospital")
public class hospital
		extends
			org.drools.persistence.jpa.marshaller.VariableEntity
		implements
			java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "HOSPITAL_ID_GENERATOR")
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "HOSPITAL_ID_GENERATOR", sequenceName = "HOSPITAL_ID_SEQ")
	private java.lang.Long id;

	private java.lang.String name;

	private java.lang.String location;

	@javax.persistence.OneToMany(fetch = javax.persistence.FetchType.EAGER, cascade = {javax.persistence.CascadeType.ALL})
	private java.util.List<com.myteam.hospital.employees> employees;

	public hospital() {
	}

	public java.lang.Long getId() {
		return this.id;
	}

	public void setId(java.lang.Long id) {
		this.id = id;
	}

	public java.lang.String getName() {
		return this.name;
	}

	public void setName(java.lang.String name) {
		this.name = name;
	}

	public java.lang.String getLocation() {
		return this.location;
	}

	public void setLocation(java.lang.String location) {
		this.location = location;
	}

	public java.util.List<com.myteam.hospital.employees> getEmployees() {
		return this.employees;
	}

	public void setEmployees(
			java.util.List<com.myteam.hospital.employees> employees) {
		this.employees = employees;
	}

	public hospital(java.lang.Long id, java.lang.String name,
			java.lang.String location,
			java.util.List<com.myteam.hospital.employees> employees) {
		this.id = id;
		this.name = name;
		this.location = location;
		this.employees = employees;
	}
@Override
    public String toString() {
        return "hospital [id=" + id + ", name=" + name + ", location="+location+", employees="+employees+"]";
    }  
}