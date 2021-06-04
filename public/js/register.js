$(document).ready(function() {
    $('#name').change(function(){
        $('#name_error').hide();
    });
    $('#surname').change(function(){
        $('#surname_error').hide();
    });
    $('#phone').change(function(){
        $('#phone_error').hide();
    });
    $('#email').change(function(){
        $('#email_error').hide();
    });
    $('#password').change(function(){
        $('#password_error').hide();
    });
    $('#repassword').change(function(){
        $('#repassword_error').hide();
    });
    $("#phone").inputmask("+9999999999", {
        placeholder: " ",
        clearMaskOnLostFocus: true
    }); //default
})