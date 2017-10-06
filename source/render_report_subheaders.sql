/*-------------------------------------
 * APEX ReprtSubheaders
 * Version: 1.0 (06-10-2017)
 * Author:  Dick Dral
 *-------------------------------------
*/
FUNCTION render_report_subheaders(p_dynamic_action IN apex_plugin.t_dynamic_action,
                               p_plugin         IN apex_plugin.t_plugin)
  RETURN apex_plugin.t_dynamic_action_render_result IS
  --
  -- plugin attributes
  l_result             apex_plugin.t_dynamic_action_render_result;
  l_subheader_column   varchar2(100)  := p_dynamic_action.attribute_01;
  --
BEGIN
  -- attribute defaults
  l_subheader_column   := p_dynamic_action.attribute_01;
  --
  -- 
  l_result.javascript_function := 'apex_report_subheaders.doIt';
  l_result.attribute_01        := l_subheader_column;
  --
  RETURN l_result;
  --
END render_report_subheaders;