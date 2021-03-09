<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
	//I made a function called "r" so I have to do less typing later on
	protected void r(string URL)
	{
		Response.Redirect("https://doc.bplogix.com/content/" + URL);
	}
	
	public void Page_Init(object sender, EventArgs e) 
	{
		string controlRaw = Request.QueryString["control"];
		string control = "";

		if (controlRaw != null)
		{
			control = controlRaw.ToLower();
		}
		else
		{
			errorLabel.Text = "NOT FOUND: Unfortunately, the help topic for that form control could not be found.";
			Response.End();
		}
		
		switch (control.ToUpper())
		{
		//Word Form Controls =====================================================================================================================
			case "INPUT":
				r("implementersreference/eform_controls.htm#InputControl");
				break;
			case "CHECKBOX":
				r("implementersreference/eform_controls.htm#CheckBox");
				break;
			case "DROPDOWN":
				r("implementersreference/eform_controls.htm#DropDown");
				break;
			case "RADIO":
				r("implementersreference/eform_controls.htm#Radio");
				break;
			case "DATE":
				r("implementersreference/eform_controls.htm#DropDown");
				break;
			case "LISTBOX":
				r("implementersreference/eform_controls.htm#DateField");
				break;
			case "SECTION":
				r("implementersreference/eform_controls.htm#Section");
				break;
			case "SECTIONEND":
				r("implementersreference/eform_controls.htm#Section");
				break;
			case "ROUTINGSLIP":
				r("implementersreference/eform_controls.htm#RoutingSlip");
				break;
			case "ARRAY":
				r("implementersreference/eform_controls.htm#Array");
				break;
			case "ARRAYEND":
				r("implementersreference/eform_controls.htm#Array");
				break;
			case "ARRAYREMOVEROW":
				r("implementersreference/eform_controls.htm#ArrayMoveRows");
				break;
			case "ARRAYMOVEUP":
				r("implementersreference/eform_controls.htm#ArrayMoveRows");
				break;
			case "ARRAYMOVEDOWN":
				r("implementersreference/eform_controls.htm#ArrayMoveRows");
				break;
			case "ADDROW":
				r("implementersreference/eform_controls.htm#AddRemoveArrayRows");
				break;
			case "REMOVEROW":
				r("implementersreference/eform_controls.htm#AddRemoveArrayRows");
				break;
			case "SUM":
				r("implementersreference/eform_controls.htm#ArraySum");
				break;
			case "BUTTON":
				r("implementersreference/eform_controls.htm#Button");
				break;
			case "BUTTONAREA":
				r("implementersreference/eform_controls.htm#Button");
				break;
			case "PRINT":
				r("implementersreference/eform_controls.htm#Button");
				break;
			case "SAVE":
				r("implementersreference/eform_controls.htm#Button");
				break;
			case "USERPICKER":
				r("implementersreference/eform_controls.htm#UserGroupPicker");
				break;
			case "GROUPPICKER":
				r("implementersreference/eform_controls.htm#UserGroupPicker");
				break;
			case "CONTENTPICKER":
				r("implementersreference/eform_controls.htm#ContentPicker");
				break;
			case "EMAILDATA":
				r("implementersreference/eform_controls.htm#EmailData");
				break;
			case "HOTLINK":
				r("implementersreference/eform_controls.htm#Hotlink");
				break;
			case "CALCULATE":
				r("implementersreference/eform_controls.htm#Calculation");
				break;
			case "COMMENTLOG":
				r("implementersreference/eform_controls.htm#CommentLog");
				break;
			case "SIGNATURECOMMENTS":
				r("implementersreference/eform_controls.htm#SignatureComments");
				break;
			case "HTML":
				r("implementersreference/eform_controls.htm#HTML");
				break;
			case "ATTACH":
				r("implementersreference/eform_controls.htm#Attachobjects");
				break;
			case "SHOWATTACH":
				r("implementersreference/eform_controls.htm#ShowAttachedObjects");
				break;
			case "ATTACHKVIEW":
				r("implementersreference/eform_control_tags.htm#_Toc421536275");
				break;
			case "SHOWATTACHKVIEW":
				r("implementersreference/eform_control_tags.htm#_Toc421536311");
				break;
			case "TABSTRIP":
				r("implementersreference/eform_control_tags.htm#TabStrip");
				break;
			case "TABSTRIPEND":
				r("implementersreference/eform_control_tags.htm#TabStrip");
				break;
			case "TABCONTENT":
				r("implementersreference/eform_control_tags.htm#TabStrip");
				break;
			case "TABCONTENTEND":
				r("implementersreference/eform_control_tags.htm#TabStrip");
				break;
			case "FORMATTING":
				r("implementersreference/eform_controls.htm#InputControl");
				break;

		//OFD Form Controls =====================================================================================================================
		//Basic Controls
			case "OFDINPUT":
				r("implementersreference/eform_online_controls_basic.htm#InputControl");
				break;
			case "OFDCHECKBOX":
				r("implementersreference/eform_online_controls_basic.htm#CheckBox");
				break;
			case "OFDDATE":
				r("implementersreference/eform_online_controls_basic.htm#DateField");
				break;
			case "OFDDROPDOWN":
				r("implementersreference/eform_online_controls_basic.htm#DropDown");
				break;
			case "OFDRADIO":
				r("implementersreference/eform_online_controls_basic.htm#Radio");
				break;
			case "OFDSECTION":
				r("implementersreference/eform_online_controls_basic.htm#Section");
				break;
			case "OFDSWITCH":
				r("implementersreference/eform_online_controls_basic.htm#Switch");
				break;

		//Input Controls
			case "OFDSIGCOMMENTS":
				r("implementersreference/eform_online_controls_input.htm#SignatureComments");
				break;
			case "OFDSIGNATURE":
				r("implementersreference/eform_online_controls_input.htm#SignatureControl");
				break;
			case "OFDCOMMENTLOG":
				r("implementersreference/eform_online_controls_input.htm#CommentLog");
				break;
			case "OFDLISTBOX":
				r("implementersreference/eform_online_controls_input.htm#ListBox");
				break;
			case "OFDRADIOLIST":
				r("implementersreference/eform_online_controls_input.htm#RadioButtonList");
				break;
			case "OFDSLIDER":
				r("implementersreference/eform_online_controls_input.htm#Slider");
				break;
			case "OFDRATING":
				r("implementersreference/eform_online_controls_input.htm#Rating");
				break;
			case "OFDUSERPICK":
				r("implementersreference/eform_online_controls_input.htm#UserPicker");
				break;
			case "OFGROUPPICK":
				r("implementersreference/eform_online_controls_input.htm#GroupPicker");
				break;

		//Other Input Controls
			case "OFDCONTENTPICK":
				r("implementersreference/eform_online_controls_other_input.htm#ContentPicker");
				break;
			case "OFDCATEGORYPICK":
				r("implementersreference/eform_online_controls_other_input.htm#CategoryPicker");
				break;
			case "OFDATTERIBUTEPICK":
				r("implementersreference/eform_online_controls_other_input.htm#AttributePicker");
				break;
			case "OFDDATASOURCEPICK":
				r("implementersreference/eform_online_controls_other_input.htm#DatasourcePicker");
				break;
			case "OFDCONTROLPICK":
				r("implementersreference/eform_online_controls_other_input.htm#ControlPicker");
				break;
			case "OFDTOPAZ":
				r("implementersreference/eform_online_controls_other_input.htm#TopazSignatureControl");
				break;
			case "OFDJOURNAL":
				r("implementersreference/eform_online_controls_other_input.htm#ActivityLog");
				break;

		//Actions Controls
			case "OFDBUTTONAREA":
				r("implementersreference/eform_online_controls_actions.htm#ButtonArea");
				break;
			case "OFDPRINT":
				r("implementersreference/eform_online_controls_actions.htm#PrintButton");
				break;
			case "OFDSAVE":
				r("implementersreference/eform_online_controls_actions.htm#SaveButton");
				break;
			case "OFDCANCEL":
				r("implementersreference/eform_online_controls_actions.htm#Cancel");
				break;
			case "OFDMANAGEUSERS":
				r("implementersreference/eform_online_controls_actions.htm#ManageProcessUsers");
				break;
			case "OFDINVITE":
				r("implementersreference/eform_online_controls_actions.htm#Invite");
				break;
			case "OFDBUTTON":
				r("implementersreference/eform_online_controls_actions.htm#Button");
				break;
			case "OFDREAUTH":
				r("implementersreference/eform_online_controls_actions.htm#Reauth");
				break;
			case "OFDCAPTCHA":
				r("implementersreference/eform_online_controls_actions.htm#Captcha");
				break;
			case "OFDEMAILCOMPLETE":
				r("implementersreference/eform_online_controls_actions.htm#EmailCompleteLink");
				break;


		//Other Controls
			case "OFDSYSVAR":
				r("implementersreference/eform_online_controls_other.htm#Sysvar");
				break;
			case "OFDLABEL":
				r("implementersreference/eform_online_controls_other.htm#LabelControl");
				break;
			case "OFDROUTINGSLIP":
				r("implementersreference/eform_online_controls_other.htm#RoutingSlip");
				break;
			case "OFDHTML":
				r("implementersreference/eform_online_controls_other.htm#HTMLCode");
				break;
			case "OFDKVIEW":
				r("implementersreference/eform_online_controls_other.htm#KnowledgeViewControls");
				break;
			case "OFDHOTLINK":
				r("implementersreference/eform_online_controls_other.htm#Hotlink");
				break;
			case "OFDIMAGE":
				r("implementersreference/eform_online_controls_other.htm#ImageControl");
				break;
			case "OFDCALC":
				r("implementersreference/eform_online_controls_other.htm#Calculation");
				break;
			case "OFDDATEDIFF":
				r("implementersreference/eform_online_controls_other.htm#DateDifference");
				break;
			case "OFDLOCKFORM":
				r("implementersreference/eform_online_controls_other.htm#LockFormControl");
				break;
			case "OFDSCHEDULER":
				r("implementersreference/eform_online_controls_other.htm#Scheduler");
				break;
			case "OFDAUDIT":
				r("implementersreference/eform_online_controls_other.htm#AuditButton");
				break;
			case "OFDSHOWREPORT":
				r("implementersreference/eform_online_controls_other.htm#ShowReportControl");
				break;
			case "OFDEMAILDATA":
				r("implementersreference/eform_online_controls_other.htm#EmailData");
				break;
			case "OFDTOOLTIP":
				r("implementersreference/eform_online_controls_other.htm#Tooltip");
				break;
				case "OFDICON":
				r("implementersreference/eform_online_controls_other.htm#Icon");
				break;
		
		//Layout Controls
			case "OFDEMBEDDEDSECTION":
				r("implementersreference/eform_online_controls_layout.htm#EmbeddedSection");
				break;
			case "OFDTABSTRIP":
				r("implementersreference/eform_online_controls_layout.htm#TabStrip");
				break;
			case "OFDCOMMENT":
				r("implementersreference/eform_online_controls_layout.htm#Comment");
				break;
			case "OFDFORMERRORSTRING":
				r("implementersreference/eform_online_controls_layout.htm#FormErrorStringLocation");
				break;
			case "OFDFORMINFOSTRING":
				r("implementersreference/eform_online_controls_layout.htm#FormInfoStringLocation");
				break;

		//Array Controls
			case "OFDARRAY":
				r("implementersreference/eform_online_controls_arrays.htm#Array");
				break;
			case "OFDADDREMOVEROWS":
				r("implementersreference/eform_online_controls_arrays.htm#AddRemoveArrayRows");
				break;
			case "OFDMOVEROWS":
				r("implementersreference/eform_online_controls_arrays.htm#ArrayMoveRows");
				break;
			case "OFDSUM":
				r("implementersreference/eform_online_controls_arrays.htm#ArraySum");
				break;
			case "OFDSORT":
				r("implementersreference/eform_online_controls_arrays.htm#SortArray");
				break;
			case "OFDROWNUM":
				r("implementersreference/eform_online_controls_arrays.htm#ArrayRowNumber");
				break;

		//Attachment Controls
			case "OFDATTACH":
				r("implementersreference/eform_online_controls_attachments.htm#AttachObjects");
				break;
			case "OFDSHOWATTACH":
				r("implementersreference/eform_online_controls_attachments.htm#ShowAttachedObjects");
				break;
			case "OFDATTACHKV":
				r("implementersreference/eform_online_controls_attachments.htm#AttachObjectsKV");
				break;
			case "OFDSHOWATTACHKV":
				r("implementersreference/eform_online_controls_attachments.htm#ShowAttachObjectsKV");
				break;


		//System Variables ============================================================================================================================
			case "SVFF":
				r("systemvariablesreferenceguide/form_system_variables.htm");
				break;
			case "SVCU":
				r("systemvariablesreferenceguide/user_system_variables.htm#_Toc421544627");
				break;
			case "SVCD":
				r("systemvariablesreferenceguide/datetime_system_variables.htm");
				break;
			case "SVTI":
				r("systemvariablesreferenceguide/workflow_step_system_variables.htm");
				break;
			case "SVST":
				r("systemvariablesreferenceguide/miscellaneous_system_variables.htm");
				break;
			case "SVRN":
				r("systemvariablesreferenceguide/miscellaneous_system_variables.htm");
				break;
			case "SYSVAR":
				r("systemvariablesreferenceguide/systemvariablesreferenceguide.htm");
				break;
			case "LABEL":
				r("implementersreference/eform_controls.htm#LabelControl");
				break;
			case "KVIEW":
				r("implementersreference/knowledge_views.htm");
				break;
			case "COMMENT":
				r("implementersreference/eform_controls.htm#CommentLog");
				break;
			case "COMMENTEND":
				r("implementersreference/eform_controls.htm#CommentLog");
				break;
            case "MANAGEUSERS":
				r("implementersreference/process_timeline_packages.htm#_Toc421536185");
                break;

		//Custom Tasks ==========================================================================================================================
		//Active Directory
			case "CTFILLFIELDSFROMAD":
				r("custom_tasks2/active_directory_custom_tasks.htm#FillFieldsFromAD");
				break;
				
		//Case Management
			case "CTSETCASEPROPERTY":
				r("custom_tasks2/case_custom_tasks.htm#SetCaseProperty");
				break;
				
		//Content Actions	
			case "CTATTACHDOCUMENT":
				r("custom_tasks2/content_actions_custom_tasks.htm#AttachDocument");
				break;
			case "CTEMAILIMPORT":
				r("custom_tasks2/content_actions_custom_tasks.htm#EmailImport");
				break;
			case "CTEXPORTFILESTOFILESYSTEM":
				r("custom_tasks2/content_actions_custom_tasks.htm#ExportFilesToFilesystem");
				break;
			case "CTEXPORTITEMS":
				r("custom_tasks2/content_actions_custom_tasks.htm#ExportItems");
				break;
			case "CTIMPORTFILESFROMFILESYSTEM":
				r("custom_tasks2/content_actions_custom_tasks.htm#ImportFilesFromFilesystem");
				break;
			case "CTITEMACTIONS":
				r("custom_tasks2/content_actions_custom_tasks.htm#ItemActions");
				break;
			case "CTRUNREPORT":
				r("custom_tasks2/content_actions_custom_tasks.htm#RunReport");
				break;
				
		//Database Connectors
			case "CTADVANCEDFILLDROPDOWNFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#AdvancedFillDropdownFromDB");
				break;
			case "CTADVANCEDFILLDROPDOWNOBJECTFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#AdvancedFillDropdownObjectFromDB");
				break;
			case "CTADVANCEDFILLFIELDSFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#AdvancedFillFieldsFromDB");
				break;
			case "CTFILLFIELDSFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#FillFieldsFromDB");
				break;
			case "CTFILLDROPDOWNFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#FillDropdownFromDB");
				break;
			case "CTFILLDROPDOWNOBJECTFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#FillDropdownObjectsFromDB");
				break;
			case "CTSQLCMD":
				r("custom_tasks2/database_connectors_custom.htm#SQLCmd");
				break;
			case "CTADVANCEDRULEQUERYFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#AdvRuleQuery");
				break;
				case "CTRULEQUERYFROMDB":
				r("custom_tasks2/database_connectors_custom.htm#RuleQuery");
				break;
				case "CTFILLDDOBJECTFROMBV":
				r("custom_tasks2/database_connectors_custom.htm#FillDrodownObjFromBV");
				break;
				
		//Documents
			case "CTFILLFIELDSFROMEXCEL":
				r("custom_tasks2/documents_custom_tasks.htm#FillFieldsFromExcel");
				break;
			case "CTTRANSFORMFORMTOWORD":
				r("custom_tasks2/documents_custom_tasks.htm#TransformFormToWord");
				break;
			case "CTEXPORTARRAYTOCSV":
				r("custom_tasks2/documents_custom_tasks.htm#ExportArray");
				break;
				case "CTSENDCALENDARINVITE":
				r("custom_tasks2/documents_custom_tasks.htm#SendInvite");
				break;
			case "CTEXPORTTOLASERFICHE":
				r("custom_tasks2/documents_custom_tasks.htm#ConvertToLaserfiche");
				break;

		//Form
			case "CTGETGEOLOCATION":
				r("custom_tasks2/form_custom_tasks.htm#GetGeolocation");
				break;
			case "CTSHOWALERT":
				r("custom_tasks2/form_custom_tasks.htm#ShowAlert");
				break;
			case "CTSHOWMAPONFORM":
				r("custom_tasks2/form_custom_tasks.htm#ShowMapOnForm");
				break;
			case "CTVALIDATEFORM":
				r("custom_tasks2/form_custom_tasks.htm#ValidateForm");
				break;
			case "CTVALIDATEFORMFIELD":
				r("custom_tasks2/form_custom_tasks.htm#ValidateFormField");
				break;
			case "CTADDJAVASCRIPT":
				r("custom_tasks2/form_custom_tasks.htm#AddJavascript");
				break;
				case "CTSETFOCUS":
				r("custom_tasks2/form_custom_tasks.htm#SetFocus");
				break;
				case "CTFILLDROPDOWNWITHFORMDATA":
				r("custom_tasks2/form_custom_tasks.htm#FillDropdownWithFormData");
				break;

		//Form Data Mapping
			case "CTCOPYFORMDATA":
				r("custom_tasks2/form_data_mapping_custom_tasks.htm#CopyFormData");
				break;
			case "CTMANIPULATEARRAYDATA":
				r("custom_tasks2/form_data_mapping_custom_tasks.htm#ManipulateArrayData");
				break;
			case "CTSETFORMDATA":
				r("custom_tasks2/form_data_mapping_custom_tasks.htm#SetFormData");
				break;
			case "CTFILLFIELDSFROMBV":
				r("custom_tasks2/form_data_mapping_custom_tasks.htm#FillFromBV");
				break;

		//Meta Data
			case "CTCOPYMETADATA":
				r("custom_tasks2/meta_data_custom_tasks.htm#CopyMetaData");
				break;
			case "CTSETMETADATA":
				r("custom_tasks2/meta_data_custom_tasks.htm#SetMetaData");
				break;

		//MS Dynamics
			case "CTFILLDROPDOWNFROMDYNAMICSCRM":
				r("custom_tasks2/ms_dynamics_custom_tasks.htm#FillDropdownFromDynamicsCRM");
				break;
			case "CTFILLFIELDSFROMDYNAMICSCRM":
				r("custom_tasks2/ms_dynamics_custom_tasks.htm#FillFieldsFromDynamicsCRM");
				break;

		//OData
			case "CTFILLDROPDOWNFROMODATA":
				r("custom_tasks2/odata_custom_tasks.htm#FillDropDownFromOData");
				break;
			case "CTFILLFIELDSFROMODATA":
				r("custom_tasks2/odata_custom_tasks.htm#FillFieldsFromOData");
				break;

		//PDF
			case "CTCONVERTTOPDF":
				r("custom_tasks2/pdf_custom_tasks.htm#ConvertToPDF");
				break;
			case "CTMAKEPDFRENDITION":
				r("custom_tasks2/pdf_custom_tasks.htm#MakePDFRendition");
				break;
			case "CTTRANSFORMFORMTOPDF":
				r("custom_tasks2/pdf_custom_tasks.htm#TransformFormToPDF");
				break;
			case "CTSIGNPDF":
				r("custom_tasks2/pdf_custom_tasks.htm#SignPDF");
				break;
			case "CTPDFANNOTATIONMERGE":
				r("custom_tasks2/pdf_custom_tasks.htm#PDFAnnotationMerge");
				break;

		//Process
			case "CTEMAILACTION":
				r("custom_tasks2/process_custom_tasks.htm#EmailAction");
				break;
			case "CTJUMPTOSTEP":
				r("custom_tasks2/process_custom_tasks.htm#JumpToStep");
				break;
			case "CTPOST":
				r("custom_tasks2/process_custom_tasks.htm#Post");
				break;
			case "CTRUNPROCESS":
				r("custom_tasks2/process_custom_tasks.htm#RunProcess");
				break;
			case "CTSCHEDULEPROCESS":
				r("custom_tasks2/process_custom_tasks.htm#ScheduleProcess");
				break;
			case "CTMANAGEUSERS":
				r("custom_tasks2/process_custom_tasks.htm#ManageTaskUsers");
				break;
			case "CTCHANGEACTIVITYDUEDATE":
				r("custom_tasks2/process_custom_tasks.htm#ChangeActivityDueDate");
				break;
			case "CTRUNPROCFROMBV":
				r("custom_tasks2/process_custom_tasks.htm#RunProcFromBV");
				break;

		//SalesForce
			case "CTFILLDROPDOWNFROMSALESFORCE":
				r("custom_tasks2/salesforce_custom_tasks.htm#FillDropDownFromSalesforce");
				break;
			case "CTFILLFIELDSFROMSALESFORCE":
				r("custom_tasks2/salesforce_custom_tasks.htm#FillFieldsFromSalesforce");
				break;

		//Sharepoint
			case "CTADDTOSHAREPOINTLIST":
				r("custom_tasks2/sharepoint_custom_tasks.htm#AddToSharePointList");
				break;
			case "CTFILLDROPDOWNFROMSHAREPOINT":
				r("custom_tasks2/sharepoint_custom_tasks.htm#FillDropDownFromSharePoint");
				break;
			case "CTFILLDDOFROMSHAREPOINT":
				r("custom_tasks2/sharepoint_custom_tasks.htm#FillDropDownObjectFromSharePoint");
				break;
			case "CTFILLFIELDSFROMSHAREPOINT":
				r("custom_tasks2/sharepoint_custom_tasks.htm#FillFieldsFromSharePoint");
				break;
			case "CTGETFILESFROMSHAREPOINT":
				r("custom_tasks2/sharepoint_custom_tasks.htm#GetFilesFromSharePoint");
				break;
			case "CTPUSHFILESTOSHAREPOINT":
				r("custom_tasks2/sharepoint_custom_tasks.htm#PushFilesToSharePoint");
				break;

		//Social media
			case "CTFILLFIELDSFROMFACEBOOK":
				r("custom_tasks2/social_media_custom_tasks.htm#FillFieldsFromFacebook");
				break;
			case "CTFILLFIELDSFROMTWITTER":
				r("custom_tasks2/social_media_custom_tasks.htm#FillFieldsFromTwitter");
				break;
			case "CTPOSTTOFACEBOOK":
				r("custom_tasks2/social_media_custom_tasks.htm#PostToFacebook");
				break;
			case "CTSENDTWEET":
				r("custom_tasks2/social_media_custom_tasks.htm#SendTweet");
				break;

		//Users
			case "CTIMPORTUSERS":
				r("custom_tasks2/user_custom_tasks.htm#Import");
				break;
			case "CTPROVISIONUSERS":
				r("custom_tasks2/user_custom_tasks.htm#Provision");
				break;			

		//Web Services
			case "CTFILLDROPDOWNFROMWEBSERVICE":
				r("custom_tasks2/web_services_custom_tasks.htm#FillDropdownFromWebService");
				break;
			case "CTFILLFIELDSFROMREST":
				r("custom_tasks2/web_services_custom_tasks.htm#FillFieldsFromREST");
				break;
			case "CTFILLFIELDSFROMWEBSERVICE":
				r("custom_tasks2/web_services_custom_tasks.htm#FillFieldsFromWebService");
				break;
				case "CTFILLFIELDSFROMPAYGATE":
				r("custom_tasks2/web_services_custom_tasks.htm#FillFieldsFromPaymentGateway");
				break;
				case "CTVSEARCHHTMLPAGE":
				r("custom_tasks2/web_services_custom_tasks.htm#FindTextOnWebPage");
				break;

		//Error =================================================================================================================================
			default:
				errorLabel.Text = "NOT FOUND: Unfortunately, the help topic for that form control could not be found.";
				break;
		}
	}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<p style="text-align: center;">
			<asp:Label runat="server" ID="errorLabel" ForeColor="Red" Font-Bold="true" />
		</p>
    </form>
</body>
</html>