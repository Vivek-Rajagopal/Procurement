{"id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1","name":"FORM_PR_HEADER","model":{"className":"com.myteam.procurementautomation.PA_PR_HEADER","name":"PA_PR_HEADER","properties":[{"name":"self_mail_id","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Requestor Business Email Address"},{"name":"field-placeHolder","value":"Requestor Business Email Address"}]}},{"name":"self_bl_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Requestor Line Of Business"},{"name":"field-placeHolder","value":"Requestor Line Of Business"}]}},{"name":"self_dept_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Requester Department Code"},{"name":"field-placeHolder","value":"Requester Department Code"}]}},{"name":"self_cost_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Requestor Cost Code"},{"name":"field-placeHolder","value":"Requestor Cost Code"}]}},{"name":"self_req","typeInfo":{"type":"BASE","className":"java.lang.Boolean","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Requesting For Others"},{"name":"field-placeHolder","value":"Requesting For Others"}]}},{"name":"mail_id","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Business Email Address Of That Employee"},{"name":"field-placeHolder","value":"Business Email Address Of That Employee"}]}},{"name":"bl_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Business Line Of That Employee"},{"name":"field-placeHolder","value":"Business Line Of That Employee"}]}},{"name":"dept_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Department Code Of That Employee"},{"name":"field-placeHolder","value":"Department Code Of That Employee"}]}},{"name":"cost_cd","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Cost Code OF That Employee"},{"name":"field-placeHolder","value":"Cost Code OF That Employee"}]}},{"name":"request_detail","typeInfo":{"type":"OBJECT","className":"com.myteam.procurementautomation.PA_PR_DETAIL","multiple":true},"metaData":{"entries":[{"name":"field-label","value":"Purchase Request Item Details"},{"name":"field-placeHolder","value":"Purchase Request Item Details"}]}},{"name":"po_number","typeInfo":{"type":"BASE","className":"java.lang.String","multiple":false},"metaData":{"entries":[{"name":"field-label","value":"Purchase Order Number"},{"name":"field-placeHolder","value":"Purchase Order Number"}]}}],"formModelType":"org.kie.workbench.common.forms.data.modeller.model.DataObjectFormModel"},"fields":[{"maxLength":100,"placeHolder":"Requestor Business Email Address","id":"field_7026","name":"self_mail_id","label":"Requestor Business Email Address","required":false,"readOnly":false,"validateOnChange":true,"binding":"self_mail_id","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Requestor Line Of Business","id":"field_3835","name":"self_bl_cd","label":"Requestor Line Of Business","required":false,"readOnly":false,"validateOnChange":true,"binding":"self_bl_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Requester Department Code","id":"field_4404","name":"self_dept_cd","label":"Requester Department Code","required":false,"readOnly":false,"validateOnChange":true,"binding":"self_dept_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Business Email Address Of That Employee","id":"field_42145","name":"mail_id","label":"Business Email Address Of That Employee","required":false,"readOnly":false,"validateOnChange":true,"binding":"mail_id","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Requestor Cost Code","id":"field_399","name":"self_cost_cd","label":"Requestor Cost Code","required":false,"readOnly":false,"validateOnChange":true,"binding":"self_cost_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Business Line Of That Employee","id":"field_3387","name":"bl_cd","label":"Business Line Of That Employee","required":false,"readOnly":false,"validateOnChange":true,"binding":"bl_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Department Code Of That Employee","id":"field_4971","name":"dept_cd","label":"Department Code Of That Employee","required":false,"readOnly":false,"validateOnChange":true,"binding":"dept_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Cost Code OF That Employee","id":"field_9831","name":"cost_cd","label":"Cost Code OF That Employee","required":false,"readOnly":false,"validateOnChange":true,"binding":"cost_cd","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"id":"field_65875","name":"self_req","label":"Requesting For Others","required":false,"readOnly":false,"validateOnChange":true,"binding":"self_req","standaloneClassName":"java.lang.Boolean","code":"CheckBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.checkBox.definition.CheckBoxFieldDefinition"},{"maxLength":100,"placeHolder":"Purchase Order Number","id":"field_505","name":"po_number","label":"Purchase Order Number","required":false,"readOnly":false,"validateOnChange":true,"binding":"po_number","standaloneClassName":"java.lang.String","code":"TextBox","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.basic.textBox.definition.TextBoxFieldDefinition"},{"creationForm":"168ebc80-6141-421b-9656-26f980bb86f3","editionForm":"168ebc80-6141-421b-9656-26f980bb86f3","columnMetas":[{"label":"Item Details","property":"item_detail"},{"label":"Project Information","property":"project_info"},{"label":"Existing Vendor Info","property":"existing_vendor_info"},{"label":"Required Date","property":"required_date"}],"id":"field_3368","name":"request_detail","label":"Purchase Request Item Details","required":false,"readOnly":false,"validateOnChange":true,"binding":"request_detail","standaloneClassName":"com.myteam.procurementautomation.PA_PR_DETAIL","code":"MultipleSubForm","serializedFieldClassName":"org.kie.workbench.common.forms.fields.shared.fieldTypes.relations.multipleSubform.definition.MultipleSubFormFieldDefinition"}],"layoutTemplate":{"version":2,"style":"FLUID","layoutProperties":{},"rows":[{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_65875","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_505","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_7026","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_42145","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3835","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3387","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4404","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_4971","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]},{"height":"12","layoutColumns":[{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_399","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]},{"span":"6","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_9831","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]},{"height":"12","layoutColumns":[{"span":"12","height":"12","rows":[],"layoutComponents":[{"dragTypeName":"org.kie.workbench.common.forms.editor.client.editor.rendering.EditorFieldLayoutComponent","properties":{"field_id":"field_3368","form_id":"dc9aa8bb-3e44-4e08-a173-891f79a0d4b1"}}]}]}]}}