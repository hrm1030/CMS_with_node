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
                  <img src="../../uploads/posts/${images[i]}" style="height: 250px; width:100%;" alt="">
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
            ${post.content}
            <ul class="blog-info">
              <li><i class="fa fa-user"></i> ${post.poster}</li>
              <li><i class="fa fa-calendar"></i> ${post.created_at}</li>`;
              if(data.session.userid == post.poster_id) {
                post_html += `<li><i class="fa fa-thumbs-up" title="like"></i> <span id="like_cnt">${post.like}</span></li>
              <li><i class="fa fa-thumbs-down" title="dislike"></i> <span id="dislike_cnt">${post.dislike}</span></li>`;
              } else{
                  post_html += `<li><i class="fa fa-thumbs-up" title="like" id="like_i"></i> <span id="like_cnt">${post.like}</span></li>
                  <li><i class="fa fa-thumbs-down" id="dislike_i" title="dislike"></i> <span id="dislike_cnt">${post.dislike}</span></li>`;
              }
              post_html +=`<li><i class="fa fa-tags"></i> ${post.category}</li>
            </ul>`;
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
                $('#like_cnt').text(data.post.like);
                $('#dislike_cnt').text(data.post.dislike);
                $('#like_i').removeAttr('id');
                $('#dislike_i').removeAttr('id');
            },
            error : function() {
                toastr['error']('Happening any errors in following');
            }
        })
    }

    $('#like_i').click(function() {
        send_following('like');
    });
    $('#dislike_i').click(function() {
        send_following('dislike');
    });
});