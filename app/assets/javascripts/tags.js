$(document).ready(function(){

    $(document).bind('ajaxError', 'form#new_tag', function(event, jqxhr, settings, exception){

        // note: jqxhr.responseJSON undefined, parsing responseText instead
        $(event.data).render_form_errors( $.parseJSON(jqxhr.responseText) );

    });

});