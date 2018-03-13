{"id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e","name":"FORM_VENDOR_HEADER","model":{"className":"com.myteam.procurementautomation.PA_VENDOR_HEADER","name":"PA_VENDOR_HEADER","properties":[{"name":"po_number","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Purchase Order Number"},{"name":"field-placeHolder","value":"Purchase Order Number"}]}},{"name":"vendor_detail","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_VENDOR_DETAIL","multiple":true},"metaData":{"entries":[{"name":"field-label","value":"Vendor Details List"},{"name":"field-placeHolder","value":"Vendor Details List"}]}},{"name":"task_id","typeInfo":{"type":"BASE","className":"java.lang.Long","multiple":false},"metaData":{"entries":[]}},{"name":"process_instance_id","typeInfo":{"type":"BASE","className":"long","multiple":false},"metaData":{"entries":[]}},{"name":"process_definition_id","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[]}}],"formModelType":"org.kie.workbench.common.forms.data.modeller.model.DataObjectFormModel"},"fields":[{"maxLength":100,"placeHolder":"Purchase Order Number","id":"field_9197","name":"po_number","label":"Purchase Order Number","required":false,"readOnly":false,"validateOnChange":true,"binding":"po_number","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"creationForm":"0be78f6d-1027-417e-8c6f-4e71b1ad94c6","editionForm":"0be78f6d-1027-417e-8c6f-4e71b1ad94c6","columnMetas":[{"label":"Address","property":"address"},{"label":"Name","property":"name"},{"label":"Warranty","property":"warranty"},{"label":"Location","property":"location"}],"id":"field_2062","name":"vendor_detail","label":"Vendor Details List","required":false,"readOnly":false,"validateOnChange":true,"binding":"vendor_detail","standaloneClassName":"com.myteam.procurementautomation.PA_VENDOR_DETAIL","code":"MultipleSubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.multipleSubform.definition.MultipleSubFormFieldDefinition"},{"placeHolder":"Task_id","maxLength":100,"id":"field_0005","name":"task_id","label":"Task_id","required":false,"readOnly":false,"validateOnChange":true,"binding":"task_id","standaloneClassName":"java.lang.Long","code":"IntegerBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.integerBox.definition.IntegerBoxFieldDefinition"},{"placeHolder":"Process_instance_id","maxLength":100,"id":"field_02307","name":"process_instance_id","label":"Process_instance_id","required":false,"readOnly":false,"validateOnChange":true,"binding":"process_instance_id","standaloneClassName":"long","code":"IntegerBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.integerBox.definition.IntegerBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Process_definition_id","id":"field_5703","name":"process_definition_id","label":"Process_definition_id","required":false,"readOnly":false,"validateOnChange":true,"binding":"process_definition_id","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9197","form_id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_0005","form_id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_02307","form_id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_5703","form_id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_2062","form_id":"e0c61116-0f44-4690-bb7c-beb4e7fc310e"}}]}]}]}}