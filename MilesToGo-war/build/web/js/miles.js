/*!
 * Bootstrap v3.0.3 (http://getbootstrap.com)
 * Copyright 2013 Twitter, Inc.
 * Licensed under http://www.apache.org/licenses/LICENSE-2.0
 */

 $(function() {
    $( "#eventdate" ).datepicker();
    $('.timepicker-default').timepicker();
  });

    
function validateForm() {
    var isValid = true;
    $(".numeric").each(function() {
        if($(this).val() && !$.isNumeric($(this).val())) {
            $(this).focus();
            isValid = false;
            return false;
        }
    });
    $(".required").each(function() {
      if(!$(this).val()) {
          $(this).focus();
          isValid = false;
          return false;
      }
    });
    return isValid;
}

 $(function() {
    $("#addEventButton").click(function() { 
        if(validateForm()) {
            $("#addEventForm").submit();
         }
    });   
    $("#registerUserButton").click(function() { 
        if(validateForm()) {
            $("#registerUserForm").submit();
         }
    });   
    
    
    
});   
    




 