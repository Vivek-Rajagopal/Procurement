{"id":"c8a312fb-df50-4061-ac54-e0c57e70497f","name":"RequestorApproval-taskform","model":{"taskName":"RequestorApproval","processId":"ProcurementAutomation.ProcurementBPM","name":"task","properties":[{"name":"IPRe","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PurchaseRequest","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"output Req Approval","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.RequestorApproval","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"outRAF","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"outRPC","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"2b8886ed-4271-4d6a-b009-9e9d651d132d","id":"field_61531","name":"IPRe","label":"IPRe","required":false,"readOnly":true,"validateOnChange":true,"binding":"IPRe","standaloneClassName":"com.myteam.procurementautomation.PurchaseRequest","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"nestedForm":"2b0f1581-4acd-46d6-acae-1356b2d317a7","id":"field_2908","name":"output Req Approval","label":"Output Req Approval","required":false,"readOnly":false,"validateOnChange":true,"binding":"output Req Approval","standaloneClassName":"com.myteam.procurementautomation.RequestorApproval","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_9646","name":"outRAF","label":"OutRAF","required":false,"readOnly":false,"validateOnChange":true,"binding":"outRAF","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"maxLength":100,"placeHolder":"OutRPC","id":"field_6036","name":"outRPC","label":"OutRPC","required":false,"readOnly":false,"validateOnChange":true,"binding":"outRPC","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_61531","form_id":"c8a312fb-df50-4061-ac54-e0c57e70497f"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_2908","form_id":"c8a312fb-df50-4061-ac54-e0c57e70497f"}}]},{"span":"6","height":"12","rows":[{"height":"12","layoutColumns":[{"span":"12","height":"6","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9646","form_id":"c8a312fb-df50-4061-ac54-e0c57e70497f"}}]},{"span":"12","height":"6","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_6036","form_id":"c8a312fb-df50-4061-ac54-e0c57e70497f"}}]}]}],"layoutComponents":[]}]}]}}