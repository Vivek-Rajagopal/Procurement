{"id":"ea0aceae-2b40-4fb1-9f30-d4fd654e7407","name":"BPApproval-taskform.frm","model":{"taskName":"BPApproval","processId":"ProcurementAutomation.ProcurementBPM","name":"task","properties":[{"name":"IPR","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PurchaseRequest","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"OBP","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.BusinessPartnerApproval","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"2b8886ed-4271-4d6a-b009-9e9d651d132d","id":"field_219517775662157E12","name":"IPR","label":"IPR","required":false,"readOnly":true,"validateOnChange":true,"binding":"IPR","standaloneClassName":"com.myteam.procurementautomation.PurchaseRequest","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"nestedForm":"86686f4d-a482-4fe1-b81f-595cf19b332e","id":"field_244704967138785E11","name":"OBP","label":"OBP","required":false,"readOnly":false,"validateOnChange":true,"binding":"OBP","standaloneClassName":"com.myteam.procurementautomation.BusinessPartnerApproval","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eInputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_219517775662157E12","form_id":"ea0aceae-2b40-4fb1-9f30-d4fd654e7407"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_244704967138785E11","form_id":"ea0aceae-2b40-4fb1-9f30-d4fd654e7407"}}]}]}]}}