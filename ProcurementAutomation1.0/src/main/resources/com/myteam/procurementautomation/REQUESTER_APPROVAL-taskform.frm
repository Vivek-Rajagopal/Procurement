{"id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e","name":"REQUESTER_APPROVAL-taskform.frm","model":{"taskName":"REQUESTER_APPROVAL","processId":"ProcurementAutomation.PA","name":"task","properties":[{"name":"INPUTDOCEXCEL","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"INPUTDOCLEVEL1","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"INPUTDOCLEVEL2","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"INPUTDOCLEVEL3","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"INPUTPOVALUE","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"INPUTVENDOR","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_VENDOR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"OUTREQUESTORAPPCOMMENT","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTREQUESTORAPPFLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"nestedForm":"e0c61116-0f44-4690-bb7c-beb4e7fc310e","id":"field_9956","name":"INPUTVENDOR","label":"Vendor Evaluation Details","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTVENDOR","standaloneClassName":"com.myteam.procurementautomation.PA_VENDOR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"maxLength":100,"placeHolder":"Requester Approval Comments","id":"field_0274884827993253E11","name":"OUTREQUESTORAPPCOMMENT","label":"Requester Approval Comments","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTREQUESTORAPPCOMMENT","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"id":"field_4666089999155432E12","name":"OUTREQUESTORAPPFLAG","label":"Requester Approval ","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTREQUESTORAPPFLAG","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"nestedForm":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","id":"field_0193772245123975E12","name":"INPUTPOVALUE","label":"Purchase Request Details","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTPOVALUE","standaloneClassName":"com.myteam.procurementautomation.PA_PR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_801","name":"INPUTDOCLEVEL1","label":"Download Level 1 Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTDOCLEVEL1","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_3376","name":"INPUTDOCEXCEL","label":"Download Consolidated Excel Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTDOCEXCEL","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_9121","name":"INPUTDOCLEVEL2","label":"Download Level 2 Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTDOCLEVEL2","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_6316","name":"INPUTDOCLEVEL3","label":"Download Level 3 Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"INPUTDOCLEVEL3","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eInputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0193772245123975E12","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9956","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3376","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_801","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9121","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_6316","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0274884827993253E11","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4666089999155432E12","form_id":"3de56cd6-dc65-4b57-b7ca-a83c46f7820e"}}]}]}]}}