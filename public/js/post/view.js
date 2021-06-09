$(document).ready(function() {
    $.ajax({
        url : '/post/view_ajax',
        method : 'post',
        data : {
            post_id : $('#post_id').val()
        },
        success : function(data) {
          var post = data.post;
          var post_html = `<div class="blog-item-img">`;
          if(post.images != '')
          {
            post_html +=`<!-- BEGIN CAROUSEL -->            
            <div class="front-carousel">
              <div id="myCarousel" class="carousel slide">
                <!-- Carousel items -->
                <div class="carousel-inner">`
            var active;
            var images = post.images.split(',');
            for(var i = 0 ; i < images.length-1; i ++ )
            {
              if(i == 0) 
              {
                active = 'active';
              }else {
                active = '';
              }
              post_html = post_html + `<div class="item ${active}">
                  <img src="../../uploads/posts/${images[i]}" style="height: 450px; width:100%;" alt="">
                </div>`
            }
                

            post_html = post_html+`</div><!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                  <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                  <i class="fa fa-angle-right"></i>
                </a>
              </div>                
            </div>
            <!-- END CAROUSEL -->`;
          }
            

          post_html +=`</div>
            <h2>${post.title}</h2>
            ${post.content}`;
          $('#post_div').html(post_html)
        },
        error : function () {
            toastr['error']('Happening any errors in view');
        }
    });

    var send_following = function(flag) {
        $.ajax({
            url : '/post/send_following',
            method : 'post',
            data : {
                post_id : $('#post_id').val(),
                flag : flag
            },
            success : function(data) {
              is_voted = 'voted';
                $('#like_cnt').text(data.like);
                $('#dislike_cnt').text(data.dislike);
                $('#like_i').removeAttr('id', 'like_i');
                $('#dislike_i').removeAttr('id', 'dislike_i');
            },
            error : function() {
                toastr['error']('Happening any errors in following');
            }
        })
    }
    var is_voted = '';
    $('#like_i').click(function() {
      console.log(is_voted)
      if(is_voted == '')
      {
        send_following('like');
      }
        
    });
    $('#dislike_i').click(function() {
      console.log(is_voted)
      if(is_voted == '')
      {
        send_following('dislike');
      }
        
    });
});