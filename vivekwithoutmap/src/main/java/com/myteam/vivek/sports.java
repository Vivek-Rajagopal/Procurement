package com.myteam.vivek;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
public class sports  implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(generator = "SPORTS_ID_GENERATOR", strategy = javax.persistence.GenerationType.AUTO)
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "SPORTS_ID_GENERATOR", sequenceName = "SPORTS_ID_SEQ")
	private java.lang.Long id;

	private java.lang.String name;

	private java.lang.String location;

	public sports() {
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

	public sports(java.lang.Long id, java.lang.String name,
			java.lang.String location) {
		this.id = id;
		this.name = name;
		this.location = location;
	}

}