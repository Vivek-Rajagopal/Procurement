{"id":"d1a3033a-832a-4f09-829c-18ad0c4d68fa","name":"UPDATE_PO-taskform.frm","model":{"taskName":"UPDATE_PO","processId":"ProcurementAutomation.PA","name":"task","properties":[{"name":"READONLYPO","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"READONLYPODOC","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"UPDATEPO","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"UPDATEPODOC","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"id":"field_58673","name":"READONLYPODOC","label":"Download Purchase Request Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"READONLYPODOC","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"nestedForm":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","id":"field_2454637130222124E12","name":"READONLYPO","label":"Purchase Request","required":false,"readOnly":true,"validateOnChange":true,"binding":"READONLYPO","standaloneClassName":"com.myteam.procurementautomation.PA_PR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"nestedForm":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","id":"field_56127390304014E11","name":"UPDATEPO","label":"Update Purchase Request","required":false,"readOnly":false,"validateOnChange":true,"binding":"UPDATEPO","standaloneClassName":"com.myteam.procurementautomation.PA_PR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_3572","name":"UPDATEPODOC","label":"Upload Purchase Request Document","required":false,"readOnly":false,"validateOnChange":true,"binding":"UPDATEPODOC","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eInputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_58673","form_id":"d1a3033a-832a-4f09-829c-18ad0c4d68fa"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_2454637130222124E12","form_id":"d1a3033a-832a-4f09-829c-18ad0c4d68fa"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3572","form_id":"d1a3033a-832a-4f09-829c-18ad0c4d68fa"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_56127390304014E11","form_id":"d1a3033a-832a-4f09-829c-18ad0c4d68fa"}}]}]}]}}