# Oracle APEX Dynamic Action Plugin -  Report Subheaders
Oracle Apex plug-in for generating subheaders in Classical Reports. 
Based on a normal report you can indicate one column to function as subheader. For each occasion where the value of this column changes an extra row is created over the full width of the report, containing the new value of the column. The subheader column in the report is hidden. 
Default the table headings are repeated after each subheader, and this can be disabled. 

## Change history
- V1.0    Initial version

## Requirements
The plugin can be used with Apex 5.0 and Apex 5.1. 

## Install
- Import plugin file "dynamic_action_plugin_nl_detora_apex_report_subheaders.sql" from the source directory into your application
- Add a column to act as subheader
- Create an After Refresh dynamic action for the Region with the report for which you want to generate subheaders
- add an action for the plugin
- fill in the name of the column to be used for the subheaders
- you can disable repeating subheaders if neccessary

## Plugin Settings
No settings are needed.

## Demo Application
http://www.speech2form.com/ords/f?p=OPFG:REPORT_SUBHEADERS

## Preview
![](https://raw.githubusercontent.com/dickdral/apex_store_location/master/apex_report_subheaders_example.gif)
---
