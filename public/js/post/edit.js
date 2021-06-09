$(document).ready(function() {

  $('#btn_add').hide();
  $('#filesTable').hide();
  $('#publish_div').hide();

  $('#btn_save').click(function() {
    
      var category_id = $('#category').val();
      var content = CKEDITOR.instances.content.getData();
      console.log($('#category>:selected').text());
      var category = $('#category>:selected').text();
      var title = $('#title').val();
      var fullname = $('#fullname').val();
      var email = $('#email').val();
      var phone = $('#phone').val();
      if(fullname == '')
      {
        toastr['warning']('Please enter Full Name.');
      }
      if(email == '')
      {
        toastr['warning']('Please enter Email');
      }
      if(phone == '')
      {
        toastr['warning']('Please enter Phone Number.');
      }
      if(title == '')
      {
        toastr['warning']('Please enter Title.')
      }
      if(content == '')
      {
        toastr['warning']('Please enter Content.');
      }
      if(fullname != '' && email != '' && phone != '' && title != '' && content != '')
      {
        var images = '';
        if($('#file_count').val() != ''){
          for(i = 1 ; i <= $('#file_count').val(); i ++)
          {
            images = images + $('#file'+i).val()+',';
          }
        }
        
        $.ajax({
            url : '/post/save',
            method : 'post',
            data : {
                category_id : category_id,
                categoryname : category,
                content : content,
                title : title,
                fullname : $('#fullname').val(),
                email : $('#email').val(),
                phone : $('#phone').val(),
                files : images
            },
            success : function (data) {
              toastr['success']('Successfully posted.');
              $('#filesTable').append('');
              $('postForm').append('');
              $('#a_linkedin').attr('href', 'https://www.linkedin.com/cws/share?url=http://localhost:8000/post/view?post='+data.post._id);
              $('#a_facebook').attr('href', 'https://www.facebook.com/sharer.php?u=http://localhost:8000/post/view?post='+data.post._id);
              $('#a_twitter').attr('href', 'https://twitter.com/intent/tweet?url=http://localhost:8000/post/view?post='+data.post._id);
              $('#btn_div').hide(500);
              $('#publish_div').show(500);
            },
            error : function () {
                toastr['error']('Happening any errors in server.');
            }
        });
      }
      
  });

  $('#btn_back').click(function() {
      window.history.back();
  });

  $('#btn_preview').click(function() {
    if($('#file_count').val() != '')
    {
      var slide_html = `<div class="blog-item-img">
      <!-- BEGIN CAROUSEL -->            
      <div class="front-carousel">
        <div id="myCarousel" class="carousel slide">
          <!-- Carousel items -->
          <div class="carousel-inner" id="carousel_image">`;
      var active ;
      for(var i = 1; i <= $('#file_count').val(); i++)
      {
        if(i == 1)
        {
          active = 'active';
        }else {
          active = '';
        }
        slide_html = slide_html + `<div class="item ${active}">
        <img src="../../uploads/posts/${$('#file'+i).val()}" style="height: 350px; width:100%;" alt="">
      </div>`;
      }
            
              
      slide_html = slide_html+`</div>
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
    }
    
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
      placeholder: "",
      clearMaskOnLostFocus: true
  }); //default

  var num = 0;
  $('#btn_add').click(function() {
    $('#filesTable').show();
    num++;
    var html = $('#photo').clone();
    console.log($('#photo')[0].files[0].name)
    html.attr('id', 'photo'+num);
    $('#files_tbody').append(html);
    $('#photo'+num).hide();
    $('#files_tbody').append('<tr file_id="'+num+'"><td>'+$('#photo')[0].files[0].name+'</td><td><button type="button" class="btn purple btn-sm" id="btn_upload'+num+'"><i class="fa fa-times"></i></button></td>');
    $('#file_count').val(num);
  });

  $('input[type=file]').change(function () {
    $('#btn_add').show();
  });

  $('#btn_remove').click(function() {
    $('#btn_add').hide();
  });
  
  $('#btn_upload').click(function() {
    var data = new FormData();
    var file_count = $('#file_count').val();
    var num = 1;
    for( var i = 1 ; i<= file_count ; i ++) {
      $.each($('#photo'+i)[0].files, function(i, file) {
        data.append('file-'+i, file);
      });
      $.ajax({
          url: '/post/filesupload',
          data: data,
          cache: false,
          contentType: false,
          processData: false,
          method: 'POST',
          type: 'POST', // For jQuery < 1.9
          success: function(data){
            toastr['success']('Successfully uploaded.');
            console.log(num);
            $('#postForm').append('<input type="hidden" id="file'+num+'" value="'+data.image_name+'">');
            num++;
          }
      });
    }
    
  });

});