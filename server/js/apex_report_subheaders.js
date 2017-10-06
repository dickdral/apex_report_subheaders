// APEX Report Subheaders
// Author: Dick Dral (Detora)
// Version: 1.0

// global namespace
var apex_report_subheaders = {

generate_subheaders: function ( report_selector, subheader_column )
{
  
  console.log('execute report subheaders');
  
},

    // function that gets called from plugin
    doIt: function() {
        // plugin attributes
        var daThis = this;
        var vElementsArray  = daThis.affectedElements;
        var report_selector = '#'+$(vElementsArray[0]).attr('id');
        var subheader_column = daThis.action.attribute01;
        apex_report_subheaders.generate_subheaders(report_selector,subheader_column);
    }
};
