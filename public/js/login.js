$(document).ready(function() {
    $('#language').val('EN');
    $('#select_lang').change(function() {
        var language = $(this).val();
        $('#language').val(language);
    });
})