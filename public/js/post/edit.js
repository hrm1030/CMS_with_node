$(document).ready(function() {
    // $('#btn_save').click(function() {
    //     var category_id = $('#category').val();
    //     var content = CKEDITOR.instances.content.getData();
    //     console.log($('#category>:selected').text());
    //     var category = $('#category>:selected').text();
    //     var title = $('#title').val();
    //     $.ajax({
    //         url : '/post/save',
    //         method : 'post',
    //         data : {
    //             category_id : category_id,
    //             category : category,
    //             content : content,
    //             title : title,
    //             fullname : $('#fullname').val(),
    //             email : $('#email').val(),
    //             phone : $('#phone').val()
    //         },
    //         success : function (data) {
    //             toastr['success']('Successfully posted.');
    //             $('#post_title').val('');
    //             CKEDITOR.instances.content.setData('');
    //         },
    //         error : function () {
    //             toastr['error']('Happening any errors in server.');
    //         }
    //     });
    // });

    $('#btn_back').click(function() {
        window.history.back();
    });

    $('#btn_preview').click(function() {
        var slide_html = `<div class="blog-item-img">
        <!-- BEGIN CAROUSEL -->            
        <div class="front-carousel">
          <div id="myCarousel" class="carousel slide">
            <!-- Carousel items -->
            <div class="carousel-inner">
              <div class="item active">
                <img src="../../uploads/posts/${post.images}" style="height: 250px; width:100%;" alt="">
              </div>
            </div>
            <!-- Carousel nav -->
            <a class="carousel-control left" href="#myCarousel" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control right" href="#myCarousel" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a>
          </div>                
        </div>
        <!-- END CAROUSEL -->             
      </div>`;
      $('#slide_div').html(slide_html);
        var today = new Date();
        var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate()+ ' ' + today.getHours()+':'+today.getMinutes()+':'+today.getSeconds()+'.'+today.getMilliseconds();
        $('#label_created_at').html(date);
        $('#label_category').html($('#category>:selected').text());
        $('#post_title').html($('#title').val());
        $('#preview_body').html(CKEDITOR.instances.content.getData());
        $('#label_email').html($('#email').val());
        $('#label_phone').html($('#phone').val());
        $('#label_name').html($('#fullname').val());
        var count = 0;
        setInterval(function(){ 
            count++;
            if(count == 30) {
                $('#preview').modal('hide');
            }
        }, 1000);
    })

    $("#phone").inputmask("+9999999999", {
        placeholder: " ",
        clearMaskOnLostFocus: true
    }); //default

    $('#category').change(function() {
        $('#categoryname').val($('#category>:selected').text());
    });


    
})