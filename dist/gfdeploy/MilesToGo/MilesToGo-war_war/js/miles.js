/*!
 * Bootstrap v3.0.3 (http://getbootstrap.com)
 * Copyright 2013 Twitter, Inc.
 * Licensed under http://www.apache.org/licenses/LICENSE-2.0
 */

 $(function() {
    $( "#eventdate" ).datepicker();
    $('.timepicker-default').timepicker();
  });

    
function validateEventForm() {  
    $(".numeric").each(function() {
        if(!$.isNumeric($(this).val())) {
            $(this).focus();
            return false;
        }
    });
    $(".required").each(function() {
      if(!$(this).val()) {
          $(this).focus();
          return false;
      }
    });
    
}

function submitForm() {    
    if(validateEventForm()) {
        $("#addEvent").submit();
     }
}
 $(function() {
    $("#addEventButton").click(function() { 
        submitForm();
    });   
});   
    




 