{"id":"9069e855-9c45-4ac4-a7fc-e03fa4e6171c","name":"VendorEvaluation-taskform","model":{"taskName":"VendorEvaluation","processId":"ProcurementAutomation.ProcurementBPM","name":"task","properties":[{"name":"output_vendor_details","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.BUVendorEvaluationDetails","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"ad316c24-a50a-4151-ba99-669398de7550","id":"field_6892","name":"output_vendor_details","label":"Output_vendor_details","required":false,"readOnly":false,"validateOnChange":true,"binding":"output_vendor_details","standaloneClassName":"com.myteam.procurementautomation.BUVendorEvaluationDetails","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_6892","form_id":"9069e855-9c45-4ac4-a7fc-e03fa4e6171c"}}]}]}]}}