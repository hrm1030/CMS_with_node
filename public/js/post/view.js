$(document).ready(function() {



  toastr['info']('To share post on social site, please follow as following steps.<br><br>1. Generate logo.<br>( If you have your logo, you can skip logo generating. )<br><br>2. Upload logo.<br><br>3. Preview the post.<br><br>4. Share on social site.');

  var my_url = 'http://app.social-media-builder.com';

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
      share_img_url = `http://app.social-media-builder.com/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `http://app.social-media-builder.com/uploads/shares/${share_img}`;
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
          // var total_url = encodeURIComponent(my_url+'?img='+share_img_url);
          // window.open(`https://www.facebook.com/sharer.php?u=${share_img_url}&t=${title}&u=${content}`, 'NewWindow');
          // window.open(`https://www.facebook.com/sharer.php?u=${encodeURIComponent(share_img_url)}&t=${encodeURIComponent(title)}`,'sharer','toolbar=0,status=0,width=626,height=436', 'NewWindow');
          window.fbAsyncInit = function() {
            // FB JavaScript SDK configuration and setup
            FB.init({
              appId      : '2839342499616311', // FB App ID
              cookie     : true,  // enable cookies to allow the server to access the session
              xfbml      : true,  // parse social plugins on this page
              version    : 'v3.2' // use graph api version 2.8
            });
            
            // Check whether the user already logged in
            FB.getLoginStatus(function(response) {
                if (response.status === 'connected') {
                    //display user data
                    getFbUserData();
                }
            });
          };
          
          // Load the JavaScript SDK asynchronously
          (function(d, s, id) {
              var js, fjs = d.getElementsByTagName(s)[0];
              if (d.getElementById(id)) return;
              js = d.createElement(s); js.id = id;
              js.src = "//connect.facebook.net/en_US/sdk.js";
              fjs.parentNode.insertBefore(js, fjs);
          }(document, 'script', 'facebook-jssdk'));
          
          FB.ui({
            method: 'share_open_graph',
            action_type: 'og.shares',
            action_properties: JSON.stringify({
                object : {
                   'og:url': 'http://app.social-media-builder.com/',
                   'og:title': title,
                   'og:description': content,
                   'og:og:image:width': '600',
                   'og:image:height': '400',
                   'og:image': share_img_url
                }
            })
        });
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
      share_img_url = `http://app.social-media-builder.com/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `http://app.social-media-builder.com/uploads/shares/${share_img}`;
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
          // window.open(`https://twitter.com/share?url=${my_url}&image=${share_img_url}&title=${title}&text=${content}`, 'NewWindow');
          window.open(`https://twitter.com/share?url=${share_img_url}&title=${title}&text=${content}`, 'NewWindow');
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
      share_img_url = `http://app.social-media-builder.com/uploads/posts/${$('#image').val()}`;
    } else {
      share_img_url = `http://app.social-media-builder.com/uploads/shares/${share_img}`;
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
          window.open(`https://www.linkedin.com/shareArticle?mini=true&url=${share_img_url}&title=${title}&summary=${content}`, 'NewWindow');
          // window.open(`https://www.linkedin.com/shareArticle?mini=true&url=${encodeURIComponent(share_img_url)}&title=${encodeURIComponent(title)}&summary=${content}`, '', 'left=0,top=0,width=650,height=420,personalbar=0,toolbar=0,scrollbars=0,resizable=0', 'NewWindow');

          // navigator.share({
          //   url: 'http://app.social-media-builder.com/',
          //   title: title,
          //   text: content,
          //   image : share_img_url
          // });
        },
        error : function() {
          toastr['error']('Happening any errors on update membership');
        }
      });
    } else {
      toastr['info'](`You can't share post. Your left membership is 0.`);
    }
  });

  $('#btn_upload').click(function() {
    if($('#photo').val() == '') {
      toastr['error']('Please select logo.');
    } else {
      Metronic.blockUI({
        boxed : true,
        message: 'Image Processing...'
      });
      var data = new FormData();
      $.each($('#photo')[0].files, function(i, file) {
          data.append('file-'+i, file);
      });
      var logo_position = $('input[name=logo_position]:checked').val();
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
                  logo : logo,
                  logo_position : logo_position
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
    
  });

  $('input[name=logo_position]').change(function() {
    var logo_position = $('input[name=logo_position]:checked').val();
    var logo = $('#logo').val();
    console.log(logo)
    if(logo != '')
    {
      Metronic.blockUI({
        boxed : true,
        message: 'Image Processing...'
      });
      $.ajax({
        url : '/share/image_jimp_position_change',
        methdod : 'post',
        data : {
          image : $('#image').val(),
          logo : logo,
          logo_position : logo_position
        },
        success : function(data) {
          Metronic.unblockUI();
          toastr['success']('Successfully image process.');
          $('#share_img').val(data.share_img);
        },
        error : function() {
          Metronic.unblockUI();
          toastr['error']('Happening any errors on position change.');
        }
      });
    }
    console.log(logo_position);
    
  });

  $('#search').keyup(function(){
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('search');
    filter = input.value.toUpperCase();
    ul = document.getElementById("categories");
    li = ul.getElementsByTagName('li');
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
      a = li[i].getElementsByTagName("a")[0];
      txtValue = a.textContent || a.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        li[i].style.display = "";
      } else {
        li[i].style.display = "none";
      }
    }
  });

});