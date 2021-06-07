$(document).ready(function() {
    $.ajax({
        url : '/post/selected_category',
        method : 'post',
        data : {
            cat_id : $('#cat_id').val()
        },
        success : function(data) {
            paginate(data.posts);
        },
        error : function(){
            toastr['error']('Happening any errors in getting post.')
        }
    });

    var paginate = function (posts){
        if(posts.length == 0) {
            $('#paginater').bootpag({
                paginationClass: 'pagination pagination-sm',
                next: '<i class="fa fa-angle-right"></i>',
                prev: '<i class="fa fa-angle-left"></i>',
                total: 0,
                page: 0,
                maxVisible: 6 
            }).on('page', function(event, num){
                console.log(num)
                
            });
            var search_html = '<h4>No matching post.</h4>';
            console.log(search_html)
            $("#div_posts").html(search_html); // or some ajax content loading...
        }else if(posts.length > 0 && posts.length < 5) {
            $('#paginater').bootpag({
                paginationClass: 'pagination pagination-sm',
                next: '<i class="fa fa-angle-right"></i>',
                prev: '<i class="fa fa-angle-left"></i>',
                total: 1,
                page: 1,
                maxVisible: 6 
            }).on('page', function(event, num){
                console.log(num)
                
            });
            var search_html = '';
            for(var i = 0 ; i < posts.length ; i ++) {
                var content = posts[i].content.slice(0, 100);
                
                var post = `<div class="row">
                            <div class="col-md-4 col-sm-4">`;
                if(posts[i].images != '')
                {
                    post +=`<!-- BEGIN CAROUSEL -->            
                    <div class="front-carousel">
                        <div class="carousel slide" id="myCarousel">
                        <!-- Carousel items -->
                        <div class="carousel-inner">`
                    var images = posts[i].images.split(',');
                    console.log(images)
                    var active = '';
                    for(var j = 0 ; j < images.length-1 ; j ++)
                    {
                        if(j == 0)
                        {
                            active = 'active';
                        }else {
                            active = '';
                        }
                        post = post +`<div class="item ${active}">
                        <img alt="" src="../../uploads/posts/${images[j]}" style="width:300px; height:150px;">
                        </div>`;
                    }
                                        

                    post  = post +`</div>
                                    <!-- Carousel nav -->
                                    <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a data-slide="next" href="#myCarousel" class="carousel-control right">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                    </div>                
                                </div>
                                <!-- END CAROUSEL -->`;
                }
                                         
                post += `</div>
                            <div class="col-md-8 col-sm-8">
                            <h2><img src="../../uploads/users/${posts[i].poster_id}.jpg" style="width:45px; height:45px;"> ${posts[i].poster}</h2>
                            <ul class="blog-info">
                                <li><i class="fa fa-calendar"></i> ${posts[i].created_at}</li>
                                <li><i class="fa fa-thumbs-up"></i> ${posts[i].like}</li>
                                <li><i class="fa fa-thumbs-down"></i> ${posts[i].dislike}</li>
                                <li><i class="fa fa-tags"></i> ${posts[i].category}</li>
                            </ul>
                            <p>${content}</p>
                            <a href="/post/view?post=${posts[i]._id}" class="more">Read more <i class="icon-angle-right"></i></a>
                            </div>
                        </div>
                        <hr class="blog-post-sep">`;
                search_html = search_html + post;
            }
            $("#div_posts").html(search_html); // or some ajax content loading...
        } else {
            total = parseInt((posts.length+1)/5);
            sub = (posts.length+1)%5;
            if(sub > 0) {
                total = total + 1;
            }
            console.log(total)
            $('#paginater').bootpag({
                paginationClass: 'pagination pagination-sm',
                next: '<i class="fa fa-angle-right"></i>',
                prev: '<i class="fa fa-angle-left"></i>',
                total: total.toFixed(0),
                page: 1,
                maxVisible: 6 
            }).on('page', function(event, num){
                console.log(num)
                if((posts.length - (num-1)*5) >=5 )
                {
                    console.log('middle')
                    var search_html = '';
                    for(var i = (num-1)*5 ; i < 5*num ; i ++) {
                        var content = posts[i].content.slice(0, 100);
                        var post = `<div class="row">
                            <div class="col-md-4 col-sm-4">`;
                        if(posts[i].images != '')
                        {
                            post += `<!-- BEGIN CAROUSEL -->            
                            <div class="front-carousel">
                                <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">`
                            var images = posts[i].images.split(',');
                            console.log(images)
                            var active = '';
                            for(var j = 0 ; j < images.length-1 ; j ++)
                            {
                                if(j == 0)
                                {
                                    active = 'active';
                                }else {
                                    active = '';
                                }
                                post = post +`<div class="item ${active}">
                                <img alt="" src="../../uploads/posts/${images[j]}" style="width:300px; height:150px;">
                                </div>`;
                            }
                                                

                            post  = post +`</div>
                                            <!-- Carousel nav -->
                                            <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                                                <i class="fa fa-angle-left"></i>
                                            </a>
                                            <a data-slide="next" href="#myCarousel" class="carousel-control right">
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                            </div>                
                                        </div>
                                        <!-- END CAROUSEL -->`;      
                        }
                                
                        post += `</div>
                                    <div class="col-md-8 col-sm-8">
                                    <h2><img src="../../uploads/users/${posts[i].poster_id}.jpg" style="width:45px; height:45px;"> ${posts[i].poster}</h2>
                                    <ul class="blog-info">
                                        <li><i class="fa fa-calendar"></i> ${posts[i].created_at}</li>
                                        <li><i class="fa fa-thumbs-up"></i> ${posts[i].like}</li>
                                        <li><i class="fa fa-thumbs-down"></i> ${posts[i].dislike}</li>
                                        <li><i class="fa fa-tags"></i> ${posts[i].category}</li>
                                    </ul>
                                    <p>${content}</p>
                                    <a href="/post/view?post=${posts[i]._id}" class="more">Read more <i class="icon-angle-right"></i></a>
                                    </div>
                                </div>
                                <hr class="blog-post-sep">`;
                        search_html = search_html + post;
                    }
                } else {
                    console.log('last')
                    var search_html = '';
                    for(var i = (num-1)*5 ; i < posts.length ; i ++) {
                        var content = posts[i].content.slice(0, 100);
                        var post = `<div class="row">
                            <div class="col-md-4 col-sm-4">`;
                        if(posts[i].images != '')
                        {
                            post +=`<!-- BEGIN CAROUSEL -->            
                            <div class="front-carousel">
                                <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">`
                            var images = posts[i].images.split(',');
                            console.log(images)
                            var active = '';
                            for(var j = 0 ; j < images.length-1 ; j ++)
                            {
                                if(j == 0)
                                {
                                    active = 'active';
                                }else {
                                    active = '';
                                }
                                post = post +`<div class="item ${active}">
                                <img alt="" src="../../uploads/posts/${images[j]}" style="width:300px; height:150px;">
                                </div>`;
                            }
                                                

                            post  = post +`</div>
                                            <!-- Carousel nav -->
                                            <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                                                <i class="fa fa-angle-left"></i>
                                            </a>
                                            <a data-slide="next" href="#myCarousel" class="carousel-control right">
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                            </div>                
                                        </div>
                                        <!-- END CAROUSEL --> `;
                        }
                            

                        post += `</div>
                                <div class="col-md-8 col-sm-8">
                                <h2><img src="../../uploads/users/${posts[i].poster_id}.jpg" style="width:45px; height:45px;"> ${posts[i].poster}</h2>
                                <ul class="blog-info">
                                    <li><i class="fa fa-calendar"></i> ${posts[i].created_at}</li>
                                    <li><i class="fa fa-thumbs-up"></i> ${posts[i].like}</li>
                                    <li><i class="fa fa-thumbs-down"></i> ${posts[i].dislike}</li>
                                    <li><i class="fa fa-tags"></i> ${posts[i].category}</li>
                                </ul>
                                <p>${content}</p>
                                <a href="/post/view?post=${posts[i]._id}" class="more">Read more <i class="icon-angle-right"></i></a>
                                </div>
                            </div>
                            <hr class="blog-post-sep">`;
                    search_html = search_html + post;
                    }
                }
                
                $("#div_posts").html(search_html); // or some ajax content loading...
            });
            var search_html = '';
            for(var i = 0 ; i < 5 ; i ++) {
                var content = posts[i].content.slice(0, 100);
                var post = `<div class="row">
                            <div class="col-md-4 col-sm-4">`;
                if(posts[i].images != '')
                {
                    post += `<!-- BEGIN CAROUSEL -->            
                    <div class="front-carousel">
                        <div class="carousel slide" id="myCarousel">
                        <!-- Carousel items -->
                        <div class="carousel-inner">`;
                    var images = posts[i].images.split(',');
                    console.log(images)
                    var active = '';
                    for(var j = 0 ; j < images.length-1 ; j ++)
                    {
                        if(j == 0)
                        {
                            active = 'active';
                        }else {
                            active = '';
                        }
                        post = post +`<div class="item ${active}">
                        <img alt="" src="../../uploads/posts/${images[j]}" style="width:300px; height:150px;">
                        </div>`;
                    }
                                        

                    post  = post +`</div>
                                    <!-- Carousel nav -->
                                    <a data-slide="prev" href="#myCarousel" class="carousel-control left">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a data-slide="next" href="#myCarousel" class="carousel-control right">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                    </div>                
                                </div>
                                <!-- END CAROUSEL -->`;
                }
                           
                post +=`</div>
                            <div class="col-md-8 col-sm-8">
                            <h2><img src="../../uploads/users/${posts[i].poster_id}.jpg" style="width:45px; height:45px;"> ${posts[i].poster}</h2>
                            <ul class="blog-info">
                                <li><i class="fa fa-calendar"></i> ${posts[i].created_at}</li>
                                <li><i class="fa fa-thumbs-up"></i> ${posts[i].like}</li>
                                <li><i class="fa fa-thumbs-down"></i> ${posts[i].dislike}</li>
                                <li><i class="fa fa-tags"></i> ${posts[i].category}</li>
                            </ul>
                            <p>${content}</p>
                            <a href="/post/view?post=${posts[i]._id}" class="more">Read more <i class="icon-angle-right"></i></a>
                            </div>
                        </div>
                        <hr class="blog-post-sep">`;
                search_html = search_html + post;
            }
            $("#div_posts").html(search_html); // or some ajax content loading...
        }
    }

    $('#btn_post').click(function(){
        toastr['info'](`You can't post. Your membership is 0.`, 'Info!');
    })
})