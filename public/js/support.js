$(document).ready(function() {
    var support_save = function() {
        var name = $('#name').val();
        var email = $('#email').val();
        var content = $('#content').val();
        console.log(content);
        if(name == '') 
        {
            toastr['error']('Please enter your name.');
        }
        if(email == '')
        {
            toastr['error']('Please enter your email.');
        }
        if(content == '')
        {
            toastr['error']('Please enter content.');
        }
        if(name != '' && email != '' && content != '')
        {
            $('#askForm').submit();
        }
    }
    $('#btn_save').click(function() {
        
        support_save();
    });

    // $('supportForm>:input').keydown(function(e) {
    //     if(e.which == 13) {
    //         support_save();
    //     }
        
    // })
});