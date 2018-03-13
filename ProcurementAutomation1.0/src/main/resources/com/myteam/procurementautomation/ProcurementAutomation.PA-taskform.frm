{"id":"e3896de6-5ebe-4744-acb4-804b14496b52","name":"ProcurementAutomation.PA-taskform.frm","model":{"processName":"PA","processId":"ProcurementAutomation.PA","name":"process","properties":[{"name":"PV_DOC_PO","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_DOC_VENDOR_EXCEL","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_DOC_VENDOR_LEVEL1","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_DOC_VENDOR_LEVEL2","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_DOC_VENDOR_LEVEL3","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_GP_APPROVAL_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_GP_APPROVAL_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA1_APPROVAL_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA1_APPROVAL_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA1_APPROVER","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA2_APPROVAL_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA2_APPROVAL_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_IA2_APPROVER","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_LEGAL_APPROVAL_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_LEGAL_APPROVAL_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_LEGAL_REQUIRED_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_LEGAL_REQUIRED_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_PO","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_PROCUREMENT_COMMENT","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_REQUESTOR_APPROVAL_COMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_REQUESTOR_APPROVAL_FLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"PV_VENDOR","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_VENDOR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.process.BusinessProcessFormModel"},"fields":[{"nestedForm":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","id":"field_860848869004169E11","name":"PV_PO","label":"Create Purchase Request","required":false,"readOnly":false,"validateOnChange":true,"binding":"PV_PO","standaloneClassName":"com.myteam.procurementautomation.PA_PR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_026974106281178E10","name":"PV_DOC_PO","label":"Upload Purchase Request Document If Any","required":false,"readOnly":false,"validateOnChange":true,"binding":"PV_DOC_PO","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_026974106281178E10","form_id":"e3896de6-5ebe-4744-acb4-804b14496b52"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_860848869004169E11","form_id":"e3896de6-5ebe-4744-acb4-804b14496b52"}}]}]}]}}