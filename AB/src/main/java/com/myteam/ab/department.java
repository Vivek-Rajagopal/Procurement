package com.myteam.ab;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
public class department implements java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(strategy = javax.persistence.GenerationType.AUTO, generator = "DEPARTMENT_ID_GENERATOR")
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "DEPARTMENT_ID_GENERATOR", sequenceName = "DEPARTMENT_ID_SEQ")
	private java.lang.Long id;

	@javax.persistence.OneToMany(cascade = {javax.persistence.CascadeType.ALL}, fetch = javax.persistence.FetchType.EAGER)
	private java.util.List<com.myteam.ab.student> studentlist;

	private java.lang.String deptname;

	public department() {
	}

	public java.lang.Long getId() {
		return this.id;
	}

	public void setId(java.lang.Long id) {
		this.id = id;
	}

	public java.util.List<com.myteam.ab.student> getStudentlist() {
		return this.studentlist;
	}

	public void setStudentlist(java.util.List<com.myteam.ab.student> studentlist) {
		this.studentlist = studentlist;
	}

	public java.lang.String getDeptname() {
		return this.deptname;
	}

	public void setDeptname(java.lang.String deptname) {
		this.deptname = deptname;
	}

	public department(java.lang.Long id,
			java.util.List<com.myteam.ab.student> studentlist,
			java.lang.String deptname) {
		this.id = id;
		this.studentlist = studentlist;
		this.deptname = deptname;
	}

}