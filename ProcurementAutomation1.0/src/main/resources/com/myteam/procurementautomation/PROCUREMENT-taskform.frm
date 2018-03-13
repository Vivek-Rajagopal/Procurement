{"id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e","name":"PROCUREMENT-taskform.frm","model":{"taskName":"PROCUREMENT","processId":"ProcurementAutomation.PA","name":"task","properties":[{"name":"READPO","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"READPODOCUMENT","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":true}]}},{"name":"OUTDOCEXCEL","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTDOCLEVEL1","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTDOCLEVEL2","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTDOCLEVEL3","typeInfo":{"type":"BASE","className":"org.jbpm.document.Document","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTIA1APPROVER","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTIA2APPROVER","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTLEGALREQUIREDCOMMENTS","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTLEGALREQUIREDFLAG","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTPROCUREMENTCOMMENT","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}},{"name":"OUTVENDOR","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_VENDOR_HEADER","multiple":false},"metaData":{"entries":[{"name":"field-readOnly","value":false}]}}],"formModelType":"org.kie.workbench.common.forms.jbpm.model.authoring.task.TaskFormModel"},"fields":[{"id":"field_0640829729006737E12","name":"READPODOCUMENT","label":"Download Purchase Request Document","required":false,"readOnly":true,"validateOnChange":true,"binding":"READPODOCUMENT","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"nestedForm":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","id":"field_209770325692322E11","name":"READPO","label":"Purchase Request","required":false,"readOnly":true,"validateOnChange":true,"binding":"READPO","standaloneClassName":"com.myteam.procurementautomation.PA_PR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"},{"id":"field_4463403467039056E11","name":"OUTDOCEXCEL","label":"Upload Consolidate Excel Document Here","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTDOCEXCEL","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_517583471124649E12","name":"OUTDOCLEVEL1","label":"Upload Level 1 Document ","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTDOCLEVEL1","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_0033536680764711E12","name":"OUTDOCLEVEL2","label":"Upload Level 2 Document ","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTDOCLEVEL2","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"id":"field_3988357540237878E12","name":"OUTDOCLEVEL3","label":"Upload Level 3 Document ","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTDOCLEVEL3","standaloneClassName":"org.jbpm.document.Document","code":"Document","serializedFieldClassName":"org.kie.workbench.common.forms.jbpm.model.authoring.document.definition.DocumentFieldDefinition"},{"maxLength":100,"placeHolder":"Select IA 1 Approver","id":"field_444211456700979E11","name":"OUTIA1APPROVER","label":"Select IA 1 Approver","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTIA1APPROVER","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Select IA 2 Approver","id":"field_1088200733734116E12","name":"OUTIA2APPROVER","label":"Select IA 2 Approver","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTIA2APPROVER","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Enter Legal Review Comments","id":"field_298662346903666E12","name":"OUTLEGALREQUIREDCOMMENTS","label":"Enter Legal Review Comments","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTLEGALREQUIREDCOMMENTS","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"id":"field_453561842500908E11","name":"OUTLEGALREQUIREDFLAG","label":"Check Legal Review Required or Not","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTLEGALREQUIREDFLAG","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Enter Procurement Comments","id":"field_296922204036009E12","name":"OUTPROCUREMENTCOMMENT","label":"Enter Procurement Comments","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTPROCUREMENTCOMMENT","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"nestedForm":"e0c61116-0f44-4690-bb7c-beb4e7fc310e","id":"field_910498011656979E11","name":"OUTVENDOR","label":"Vendor Evaluation Details","required":false,"readOnly":false,"validateOnChange":true,"binding":"OUTVENDOR","standaloneClassName":"com.myteam.procurementautomation.PA_VENDOR_HEADER","code":"SubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.subForm.definition.SubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eInputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_209770325692322E11","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0640829729006737E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.uberfire.ext.plugin.client.perspective.editor.layout.editor.HTMLLayoutDragComponent","properties":{"HTML_CODE":"\u003ch3\u003eOutputs:\u003c/h3\u003e"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4463403467039056E11","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_517583471124649E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0033536680764711E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3988357540237878E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_444211456700979E11","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_1088200733734116E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_453561842500908E11","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_298662346903666E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_296922204036009E12","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_910498011656979E11","form_id":"f10c82e1-08fe-4dac-a06c-37fa1906fb9e"}}]}]}]}}