$(document).ready(function() {

    var payment_confirm = function(membership) {
        $.ajax({
            url : '/membership/update',
            method : 'post',
            data : {
                membership : membership
            },
            success : function(data) {
                if(data.old_membership == 1) {
                    $('#pricing_free').removeClass('pricing-active');
                    $('#free_head').removeClass('pricing-head-active');
                    $('#btn_free').html('Get <i class="m-icon-swapright m-icon-white"></i>');
                }
                if(data.old_membership == 2) {
                    $('#pricing_common').removeClass('pricing-active');
                    $('#common_head').removeClass('pricing-head-active');
                    $('#btn_common').html('Sign Up <i class="m-icon-swapright m-icon-white"></i>');
                }
                if(data.old_membership == 3) {
                    $('#pricing_medium').removeClass('pricing-active');
                    $('#free_medium').removeClass('pricing-head-active');
                    $('#btn_medium').html('Sign Up <i class="m-icon-swapright m-icon-white"></i>');
                }
                if(data.old_membership == 4) {
                    $('#pricing_advance').removeClass('pricing-active');
                    $('#advance_head').removeClass('pricing-head-active');
                    $('#btn_advance').html('Sign Up <i class="m-icon-swapright m-icon-white"></i>');
                }
                if(membership == 1) {
                    $('#pricing_free').addClass('pricing-active');
                    $('#free_head').addClass('pricing-head-active');
                    $('#btn_free').html('Got');
                }
                if(membership == 2) {
                    $('#pricing_common').addClass('pricing-active');
                    $('#common_head').addClass('pricing-head-active');
                    $('#btn_common').html('Got');
                }
                if(membership == 3) {
                    $('#pricing_medium').addClass('pricing-active');
                    $('#free_medium').addClass('pricing-head-active');
                    $('#btn_medium').html('Got');
                }
                if(membership == 4) {
                    $('#pricing_advance').addClass('pricing-active');
                    $('#advance_head').addClass('pricing-head-active');
                    $('#btn_advance').html('Got');
                }
                toastr['success']('Successfully upgraded.')
            },
            error : function() {
                toastr['error']('Happening any errrors in membership upgrade');
            }
        })
    }

    $('#btn_free').click(function() {
        console.log('free')
        payment_confirm(1);
    });

    $('#btn_common').click(function() {
        $('#btn_confirm').attr('membership', 2);
        $('#confirmModal').modal('show');
    });

    $('#btn_medium').click(function() {
        $('#btn_confirm').attr('membership', 3);
        $('#confirmModal').modal('show');
    });

    $('#btn_advance').click(function() {
        $('#btn_confirm').attr('membership', 4);
        $('#confirmModal').modal('show');
    });

    $('#btn_confirm').click(function() {
        var membership = $(this).attr('membership');
        payment_confirm(membership);
    })
})