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

            Email.send({
                Host: "smtp",
                Username : "support@social-media-builder.com",
                Password : "1234567890Aa@",
                To : email,
                From : "support@social-media-builder.com",
                Subject : "spport",
                Body : "Thank you for your support",
                }).then(message => {
                        alert("mail sent successfully1");
                        Email.send({
                            Host: "smtp",
                            Username : "support@social-media-builder.com",
                            Password : "1234567890Aa@",
                            To : "support@social-media-builder.com",
                            From : email,
                            Subject : "spport",
                            Body : "Thank you for your support",
                            }).then(message => {
                                    alert("mail sent successfully2");
                                    
                                    // $('#supportForm').submit();
                            }).catch(err=>{
                                alert('error2');
                            });
                }).catch(err=>{
                    alert('error1');
                });
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