{"id":"126cd520-6ce6-4e42-a72a-9a0e5068e2b0","name":"RequestorApproval-taskform.frm","model":{"taskName":"RequestorApproval","processId":"ProcurementAutomation.ProcurementBPM","name":"task","properties":[{"name":"IPRe","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PurchaseRequest","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"outRAF","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"outRPC","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"2b8886ed-4271-4d6a-b009-9e9d651d132d","id":"field_878608170408866E11","name":"IPRe","label":"IPRe","required":false,"readOnly":true,"validateOnChange":true,"binding":"IPRe","standaloneClassName":"com.myteam.procurementautomation.PurchaseRequest","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_1448740092263816E12","name":"outRAF","label":"Requestor Approval","required":true,"readOnly":false,"validateOnChange":true,"binding":"outRAF","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"placeHolder":"OutRPC","rows":4,"id":"field_0184791676192078E12","name":"outRPC","label":"Requestor Comments","required":true,"readOnly":false,"validateOnChange":true,"binding":"outRPC","standaloneClassName":"java.lang.String","code":"TextArea","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textArea.definition.TextAreaFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eInputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_878608170408866E11","form_id":"126cd520-6ce6-4e42-a72a-9a0e5068e2b0"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_1448740092263816E12","form_id":"126cd520-6ce6-4e42-a72a-9a0e5068e2b0"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0184791676192078E12","form_id":"126cd520-6ce6-4e42-a72a-9a0e5068e2b0"}}]}]}]}}