{"id":"d2cc6352-7015-49e4-8a40-42950fad2bb0","name":"employeeinput","model":{"className":"com.myteam.hospital.employee","name":"employee","properties":[{"name":"department","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[]}},{"name":"location","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[]}},{"name":"staffs","typeInfo":{"type":"OBJECT","className":"com.myteam.hospital.Staff","multiple":true},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.data.modeller.model.DataObjectFormModel"},"fields":[{"maxLength":100,"placeHolder":"Department","id":"field_5271","name":"department","label":"Department","required":false,"readOnly":false,"validateOnChange":true,"binding":"department","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Location","id":"field_4954","name":"location","label":"Location","required":false,"readOnly":false,"validateOnChange":true,"binding":"location","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"creationForm":"a7195c82-af73-47f9-b0fa-85fa323a7ede","editionForm":"a7195c82-af73-47f9-b0fa-85fa323a7ede","columnMetas":[{"label":"Name","property":"name"},{"label":"Salary","property":"salary"},{"label":"Age","property":"age"}],"id":"field_37067","name":"staffs","label":"Staffs","required":false,"readOnly":false,"validateOnChange":true,"binding":"staffs","standaloneClassName":"com.myteam.hospital.Staff","code":"MultipleSubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.multipleSubform.definition.MultipleSubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_5271","form_id":"d2cc6352-7015-49e4-8a40-42950fad2bb0"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4954","form_id":"d2cc6352-7015-49e4-8a40-42950fad2bb0"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_37067","form_id":"d2cc6352-7015-49e4-8a40-42950fad2bb0"}}]}]}]}}