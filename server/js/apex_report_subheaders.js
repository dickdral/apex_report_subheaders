// APEX Report Subheaders
// Author: Dick Dral (Detora)
// Version: 1.0

// global namespace
var apex_report_subheaders = {

  generate_subheaders: function ( report_selector, subheader_column, repeat_headings )
  {
    // console.log('execute report subheaders');
    var subheader;
    var selector = '[headers="'+subheader_column+'"]';
    var headings = $(report_selector).find('th').closest('tr');
    console.log(headings);
    
    $(report_selector).find(selector).each( function() 
    {
        var new_subheader = $(this).html();
        if ( new_subheader != subheader )            
        { 
            // add subheader
            subheader = new_subheader;
            tr = $(this).closest('tr');
            tr.before('<tr><td colspan="100" class="t-Report-cell subheader">'+subheader+'</td></tr>');
            
            // repeat headings if requested
            if ( repeat_headings == "Y" ) 
                { tr.before($(headings).clone()); }
        }
    });
      
    // hide original heading if repeat headings are requested
    if ( repeat_headings == "Y" ) 
       { $(headings).hide(); }
      
    // generate styles to hide subheader column and format the subheaders
    $('head').append('<style>#'+subheader_column+',[headers="'+subheader_column+'"]{display:none;}</style>');
    $('head').append('<style>td.t-Report-cell.subheader{background-color: lightgrey!important;font-weight: bold;}</style>');

  },

    // function that gets called from plugin
    doIt: function() {
        // plugin attributes
        var daThis = this;
        var vElementsArray  = daThis.affectedElements;
        var report_selector = '#'+$(vElementsArray[0]).attr('id');
        var subheader_column = daThis.action.attribute01;
        var repeat_headings  = daThis.action.attribute02;
        apex_report_subheaders.generate_subheaders(report_selector,subheader_column,repeat_headings);
    }
};
