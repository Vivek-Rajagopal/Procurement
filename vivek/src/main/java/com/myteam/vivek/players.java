package com.myteam.vivek;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
public class players extends org.drools.persistence.jpa.marshaller.VariableEntity implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(generator = "PLAYERS_ID_GENERATOR", strategy = javax.persistence.GenerationType.AUTO)
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "PLAYERS_ID_GENERATOR", sequenceName = "PLAYERS_ID_SEQ")
	private java.lang.Long id;

	private java.lang.String name;

	private java.lang.Integer age;

	public players() {
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

	public java.lang.Integer getAge() {
		return this.age;
	}

	public void setAge(java.lang.Integer age) {
		this.age = age;
	}

	public players(java.lang.Long id, java.lang.String name,
			java.lang.Integer age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}

}