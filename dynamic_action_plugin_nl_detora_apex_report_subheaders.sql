set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>5853461301138549
,p_default_application_id=>108
,p_default_owner=>'G2S'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_report_subheaders
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(229789042870110964)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.REPORT_SUBHEADERS'
,p_display_name=>'Report Subheaders'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_javascript_file_urls=>'#PLUGIN_FILES#apexresizedialog.js'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX ReprtSubheaders',
' * Version: 1.0 (06-10-2017)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'FUNCTION render_report_subheaders(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                               p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result             apex_plugin.t_dynamic_action_render_result;',
'  l_subheader_column   varchar2(100)  := p_dynamic_action.attribute_01;',
'  --',
'BEGIN',
'  -- attribute defaults',
'  l_subheader_column   := p_dynamic_action.attribute_01;',
'  --',
'  -- ',
'  l_result.javascript_function := ''apex_report_subheaders.doIt'';',
'  l_result.attribute_01        := l_subheader_column;',
'  --',
'  RETURN l_result;',
'  --',
'END render_report_subheaders;'))
,p_render_function=>'render_report_subheaders'
,p_standard_attributes=>'REGION:ONLOAD'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>4
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(229789238397110974)
,p_plugin_id=>wwv_flow_api.id(229789042870110964)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Subheader Column'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_help_text=>'Enter column that contains the subheader text'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F2041504558205265706F727420537562686561646572730A2F2F20417574686F723A204469636B204472616C20284465746F7261290A2F2F2056657273696F6E3A20312E300A0A2F2F20676C6F62616C206E616D6573706163650A76617220617065';
wwv_flow_api.g_varchar2_table(2) := '785F7265706F72745F73756268656164657273203D207B0A0A67656E65726174655F737562686561646572733A2066756E6374696F6E2028207265706F72745F73656C6563746F722C207375626865616465725F636F6C756D6E20290A7B0A20200A2020';
wwv_flow_api.g_varchar2_table(3) := '636F6E736F6C652E6C6F67282765786563757465207265706F7274207375626865616465727327293B0A20200A7D2C0A0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A20202020646F';
wwv_flow_api.g_varchar2_table(4) := '49743A2066756E6374696F6E2829207B0A20202020202020202F2F20706C7567696E20617474726962757465730A202020202020202076617220646154686973203D20746869733B0A20202020202020207661722076456C656D656E7473417272617920';
wwv_flow_api.g_varchar2_table(5) := '203D206461546869732E6166666563746564456C656D656E74733B0A2020202020202020766172207265706F72745F73656C6563746F72203D202723272B242876456C656D656E747341727261795B305D292E617474722827696427293B0A2020202020';
wwv_flow_api.g_varchar2_table(6) := '202020766172207375626865616465725F636F6C756D6E203D206461546869732E616374696F6E2E61747472696275746530313B0A2020202020202020617065785F7265706F72745F737562686561646572732E67656E65726174655F73756268656164';
wwv_flow_api.g_varchar2_table(7) := '657273287265706F72745F73656C6563746F722C7375626865616465725F636F6C756D6E293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(229826596378641554)
,p_plugin_id=>wwv_flow_api.id(229789042870110964)
,p_file_name=>'apex_report_subheaders.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
