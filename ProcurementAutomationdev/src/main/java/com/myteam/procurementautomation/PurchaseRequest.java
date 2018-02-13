package com.myteam.procurementautomation;

/**
 * This class was automatically generated by the data modeler tool.
 */

@javax.persistence.Entity
@javax.persistence.Table(name = "PA_Purchase_Request")
public class PurchaseRequest
		extends
			org.drools.persistence.jpa.marshaller.VariableEntity
		implements
			java.io.Serializable {

	static final long serialVersionUID = 1L;

	@javax.persistence.GeneratedValue(generator = "PURCHASEREQUEST_ID_GENERATOR", strategy = javax.persistence.GenerationType.AUTO)
	@javax.persistence.Id
	@javax.persistence.SequenceGenerator(name = "PURCHASEREQUEST_ID_GENERATOR", sequenceName = "PURCHASEREQUEST_ID_SEQ")
	private java.lang.Long id;

	@org.kie.api.definition.type.Label("Requestor Business Email Address")
	private java.lang.String self_mail_id;

	@org.kie.api.definition.type.Label("Requestor Line Of Business")
	private java.lang.String self_bl_cd;

	@org.kie.api.definition.type.Label("Requester Department Code")
	private java.lang.String self_dept_cd;

	@org.kie.api.definition.type.Label("Requestor Cost Code")
	private java.lang.String self_cost_cd;

	@org.kie.api.definition.type.Label("Requesting For Others")
	private java.lang.Boolean self_req;

	@org.kie.api.definition.type.Label("Business Email Address Of That Employee")
	private java.lang.String mail_id;

	@org.kie.api.definition.type.Label("Business Line Of That Employee")
	private java.lang.String bl_cd;

	@org.kie.api.definition.type.Label("Department Code Of That Employee")
	private java.lang.String dept_cd;

	@org.kie.api.definition.type.Label("Cost Code OF That Employee")
	private java.lang.String cost_cd;

	@javax.persistence.OneToMany(cascade = {javax.persistence.CascadeType.ALL}, fetch = javax.persistence.FetchType.EAGER)
	private java.util.List<com.myteam.procurementautomation.RequisitionDetails> requisition_details;

	public PurchaseRequest() {
	}

	public java.lang.Long getId() {
		return this.id;
	}

	public void setId(java.lang.Long id) {
		this.id = id;
	}

	public java.lang.String getSelf_mail_id() {
		return this.self_mail_id;
	}

	public void setSelf_mail_id(java.lang.String self_mail_id) {
		this.self_mail_id = self_mail_id;
	}

	public java.lang.String getSelf_bl_cd() {
		return this.self_bl_cd;
	}

	public void setSelf_bl_cd(java.lang.String self_bl_cd) {
		this.self_bl_cd = self_bl_cd;
	}

	public java.lang.String getSelf_dept_cd() {
		return this.self_dept_cd;
	}

	public void setSelf_dept_cd(java.lang.String self_dept_cd) {
		this.self_dept_cd = self_dept_cd;
	}

	public java.lang.String getSelf_cost_cd() {
		return this.self_cost_cd;
	}

	public void setSelf_cost_cd(java.lang.String self_cost_cd) {
		this.self_cost_cd = self_cost_cd;
	}

	public java.lang.Boolean getSelf_req() {
		return this.self_req;
	}

	public void setSelf_req(java.lang.Boolean self_req) {
		this.self_req = self_req;
	}

	public java.lang.String getMail_id() {
		return this.mail_id;
	}

	public void setMail_id(java.lang.String mail_id) {
		this.mail_id = mail_id;
	}

	public java.lang.String getBl_cd() {
		return this.bl_cd;
	}

	public void setBl_cd(java.lang.String bl_cd) {
		this.bl_cd = bl_cd;
	}

	public java.lang.String getDept_cd() {
		return this.dept_cd;
	}

	public void setDept_cd(java.lang.String dept_cd) {
		this.dept_cd = dept_cd;
	}

	public java.lang.String getCost_cd() {
		return this.cost_cd;
	}

	public void setCost_cd(java.lang.String cost_cd) {
		this.cost_cd = cost_cd;
	}

	public java.util.List<com.myteam.procurementautomation.RequisitionDetails> getRequisition_details() {
		return this.requisition_details;
	}

	public void setRequisition_details(
			java.util.List<com.myteam.procurementautomation.RequisitionDetails> requisition_details) {
		this.requisition_details = requisition_details;
	}

	public PurchaseRequest(
			java.lang.Long id,
			java.lang.String self_mail_id,
			java.lang.String self_bl_cd,
			java.lang.String self_dept_cd,
			java.lang.String self_cost_cd,
			java.lang.Boolean self_req,
			java.lang.String mail_id,
			java.lang.String bl_cd,
			java.lang.String dept_cd,
			java.lang.String cost_cd,
			java.util.List<com.myteam.procurementautomation.RequisitionDetails> requisition_details) {
		this.id = id;
		this.self_mail_id = self_mail_id;
		this.self_bl_cd = self_bl_cd;
		this.self_dept_cd = self_dept_cd;
		this.self_cost_cd = self_cost_cd;
		this.self_req = self_req;
		this.mail_id = mail_id;
		this.bl_cd = bl_cd;
		this.dept_cd = dept_cd;
		this.cost_cd = cost_cd;
		this.requisition_details = requisition_details;
	}

}