$(document).ready(function() {

  toastr['info']('To share post on social site, please follow as following steps.<br><br>1. Generate logo.<br>( If you have your logo, you can skip logo generating. )<br><br>2. Upload logo.<br><br>3. Preview the post.<br><br>4. Share on social site.');

  $.ajax({
      url : '/post/view_ajax',
      method : 'post',
      data : {
          post_id : $('#post_id').val()
      },
      success : function(data) {
        var post = data.post;
        var post_html = `<h2 id="title">${post.title}</h2>
                            <div id="content">${post.content}</div><br>
                            <div class="blog-item-img">
                              <!-- BEGIN CAROUSEL -->            
                              <div class="front-carousel">
                                <div id="myCarousel" class="carousel slide">
                                  <!-- Carousel items -->
                                  <div class="carousel-inner">
                                    <div class="item active">
                                    <input type="hidden" id="image" value="${post.image}">
                                      <img src="../../uploads/posts/${post.image}" style="height: 450px; width:100%;" alt="">
                                    </div>
                                  </div>
                                </div>                
                              </div>
                              <!-- END CAROUSEL -->
                            </div>`;
        $('#post_div').html(post_html);
        
      },
      error : function () {
          toastr['error']('Happening any errors in view');
      }
  });


  $('.btn_preview').click(function() {
    var share_img_url;
    if($('#share_img').val() == '')
    {
      share_img_url = `../../uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `../../uploads/shares/${$('#share_img').val()}`;
    }
      $('#preview_title').text($('#title').text());
      $('#preview_body').html($('#content').html());
      var share_img_div = `<div class="blog-item-img">
                            <!-- BEGIN CAROUSEL -->            
                            <div class="front-carousel">
                              <div id="myCarousel" class="carousel slide">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                  <div class="item active">
                                    <img src="${share_img_url}" style="height: 450px; width:100%;" alt="">
                                  </div>
                                </div>
                              </div>                
                            </div>
                            <!-- END CAROUSEL -->
                          </div>`;
      $('#slide_div').html(share_img_div);
      $('#previewModal').modal('show');
      var count = 0;
      setInterval(function(){ 
          count++;
          if(count == 30) {
              $('#previewModal').modal('hide');
          }
      }, 1000);
  });

  $('#btn_facebook').click(function() {
    var share_img= $('#share_img').val();
    var title = $('#title').text();
    var content = $('#content').text();
    var share_img_url;
    if(share_img == '')
    {
      share_img_url = `https://myurl/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `https://myurl/uploads/shares/${share_img}`;
    }
    var left_membership = $('#left_membership').val();
    if(left_membership > 0){
      $.ajax({
        url : '/share',
        methdod : 'post',
        data : { post_id : $('#post_id').val()},
        success : function(data){
          $('#left_membership').val(data.left_membership);
          $('#shared_span').text(data.shared);
          window.open(`https://www.facebook.com/sharer.php?image=${share_img_url}&title=${title}&description=${content}`, 'NewWindow');
        },
        error : function() {
          toastr['error']('Happening any errors on update membership');
        }
      })
    } else {
      toastr['info'](`You can't share post. Your left membership is 0.`);
    } 
  });

  $('#btn_twitter').click(function() {
    var share_img= $('#share_img').val();
    var title = $('#title').text();
    var content = $('#content').text();
    var share_img_url;
    if(share_img == '')
    {
      share_img_url = `https://myurl/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `https://myurl/uploads/shares/${share_img}`;
    }
    var left_membership = $('#left_membership').val();
    if(left_membership > 0){
      $.ajax({
        url : '/share',
        methdod : 'post',
        data : { post_id : $('#post_id').val()},
        success : function(data){
          $('#left_membership').val(data.left_membership);
          $('#shared_span').text(data.shared);
          window.open(`https://twitter.com/share?image=${share_img_url}&title=${title}&text=${content}`, 'NewWindow');
        },
        error : function() {
          toastr['error']('Happening any errors on update membership');
        }
      });
    } else {
      toastr['info'](`You can't share post. Your left membership is 0.`);
    }
  });

  $('#btn_linkedin').click(function() {
    var share_img= $('#share_img').val();
    var title = $('#title').text();
    var content = $('#content').text();
    var share_img_url;
    if(share_img == '')
    {
      share_img_url = `https://myurl/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `https://myurl/uploads/shares/${share_img}`;
    }
    var left_membership = $('#left_membership').val();
    if(left_membership > 0){
      $.ajax({
        url : '/share',
        methdod : 'post',
        data : { post_id : $('#post_id').val()},
        success : function(data){
          $('#left_membership').val(data.left_membership);
          $('#shared_span').text(data.shared);
          window.open(`https://www.linkedin.com/sharing/share-offsite/?image=${share_img_url}&title=${title}&description=${content}`, 'NewWindow');
        },
        error : function() {
          toastr['error']('Happening any errors on update membership');
        }
      });
    } else {
      toastr['info'](`You can't share post. Your left membership is 0.`);
    }
  });

  // $('#btn_instagram').click(function() {

  //   window.open('', 'NewWindow');
  // })

  $('#btn_upload').click(function() {
    if($('#photo').val() == '') {
      toastr['error']('Please select logo.');
    } else {
      Metronic.blockUI({
        message: 'Image Processing...'
      });
      var data = new FormData();
      $.each($('#photo')[0].files, function(i, file) {
          data.append('file-'+i, file);
      });
      $.ajax({
          url: '/share/logo_upload',
          data: data,
          cache: false,
          contentType: false,
          processData: false,
          method: 'POST',
          type: 'POST', 
          success: function(data){
              toastr['success']('Successfully uploaded.');
              $('#logo').val(data.image_name);
              var logo = $('#logo').val();
              $.ajax({
                url : '/share/image_jimp',
                methdod : 'get',
                data : {
                  image : $('#image').val(),
                  logo : logo
                },
                success : function(data) {
                  toastr['success']('Successfully image process.');
                  Metronic.unblockUI();
                  $('#share_img').val(data.share_img);
                },
                error : function() {
                  toastr['error']('Happening any errors on image processing.');
                }
              });
          }
      });
    }
    
  })

});