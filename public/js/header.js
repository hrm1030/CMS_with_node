$(document).ready(function() {
    $('#btn_post').click(function(){
        toastr['info'](`You can't post. Your membership is 0.`, 'Info!');
    })
})