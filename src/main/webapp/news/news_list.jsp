<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 18/9/30
  Time: 下午2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="keywords" content="熊猫救援">
    <meta name="description" content="熊猫救援，一家专门为路途中的故障汽车提供服务的软件。">
    <title>熊猫救援</title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="icon" href="favicon.png">
    <link href="../css/hallooou.css" rel="stylesheet">
    <link href="../css/color_main.css" rel="stylesheet">
    <link href="../css/owl.carousel.css" rel="stylesheet">
    <link href="../css/owl.theme.css" rel="stylesheet">
    <link href="../css/owl.transitions.css" rel="stylesheet">
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/magnific-popup.css" rel="stylesheet">
    <link href="../css/jquery.mb.ytplayer.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/pagination.css" rel="stylesheet"/>
    <style type="text/css">
        .modal-backdrop.in {
            opacity: 0;
        }
        .news-item{
            height:300px;
            overflow: hidden;
        }
        .news-item-content{
            padding-top:2px;
            padding-bottom:5px;
        }
    </style>
</head>
<body>
<header id="intro-carousel" class="carousel slide">
    <div class="owl-carousel" id="intro-pr" style="height:100%;">
        <!--1-->
        <div class="item" style="height:100%;" id="item1">
            <div class="fill" style="background-image:url(images/bg_01.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">MORE THAN JUST CAR RESCUE</h1>
                <p class="intro-text wow animated slideInRight">
                    熊猫救援,快捷安全
                </p>
                <h3 class="current-city wow animated slideInUp">
							<span>
								<span class="fa fa-map-marker"></span>
							</span>
                    <span>
								<span>当前所在城市</span>
							    <span class="city">上海</span>
							</span>
                </h3>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--2-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_02.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">我们无处不在</h1>
                <p class="intro-text wow animated slideInRight">
                    并随时准备着精准服务
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--3-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_03.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">连接各处</h1>
                <p class="intro-text wow animated slideInRight">
                    有你的地方便有我们
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--4-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_04.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">不管路途多么遥远，不管夜是多么黑</h1>
                <p class="intro-text wow animated slideInRight">
                    我们是定全力以赴
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--5-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_05.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">提供维修推荐</h1>
                <p class="intro-text wow animated slideInRight">
                    我们是认真的
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--6-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_06.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">精诚合作</h1>
                <p class="intro-text wow animated slideInRight">
                    方便你我
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--7-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_07.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">高端服务</h1>
                <p class="intro-text wow animated slideInRight">
                    智慧维修
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--8-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_08.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">细节之处</h1>
                <p class="intro-text wow animated slideInRight">
                    便是安全之处
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
        <!--9-->
        <div class="item">
            <div class="fill" style="background-image:url(images/bg_09.jpg)">
            </div>
            <div class="carousel-caption">
                <h1 class="wow animated slideInLeft">我们拥有一支超强的团队</h1>
                <p class="intro-text wow animated slideInRight">
                    我们在这里像烈火一样熊熊燃烧
                </p>
            </div>
            <div class="overlay-detail">
            </div>
        </div>
    </div>
    <div class="mouse">
    </div>
</header>
<section>
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h2>新闻动态</h2>
            </div>
            <div class="container">
                <div class="row text-center news-list">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row" style="text-align: center;padding-top:10px;padding-bottom:10px;">
                <div class="pagination_2"></div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../common/footer.jsp"></jsp:include>
<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/wow.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/jquery.parallax-1.1.3.js"></script>
<script src="../js/jquery.inview.min.js"></script>
<script src="../js/pace.min.js"></script>
<script src="../js/jquery.easing.1.3.js"></script>
<script src="../js/jquery.animations.min.js"></script>
<script src="../js/jquery.animations-tile.min.js"></script>
<script src="../js/pagination.min.js"></script>
<script src="../js/hallooou.js"></script>
<script type="text/javascript">
    var start=1;
    var isExcuteInitPagination=false;
    $(function () {
        loadNewsList();
    });
    function  initPagination(totalsize) {
        var totalPage=Math.ceil(totalsize/10);
        if(totalPage==0){
            totalPage=1;
        }
        $(".pagination_2").whjPaging({
            css: 'css-1',
            totalSize: totalsize,
            totalPage: totalPage,
            showPageNum:10,
            isShowFL: true,
            isShowSkip: false,
            isResetPage: false,
            isShowRefresh: false,
            isShowTotalPage: false,
            isShowTotalSize: false,
            isShowPageSizeOpt: false,
            callBack: function(currPage, pageSize) {
                start=currPage;
                $('.news-list').empty();
                loadNewsList();
                alert('currPage:' + currPage + '     pageSize:' + pageSize);
            }
        });
    }
    function loadNewsList() {
        $.ajax({
            url:"http://www.topinspector.cn:9090/News/getNewsByLike.action",
            dataType:'json',
            data:{
                page:start,
                rows:10
            },
            dataType:'json',
            success:function (result) {
                if(result){
                    var total=result.total;
                    if(total!=undefined&&total>0){
                        if(!isExcuteInitPagination){
                            initPagination(total);
                            isExcuteInitPagination=true;
                        }
                    }
                    var data=result.rows;
                    if(data.length>0){
                        for(var i=0;i<data.length;i++){
                            var id=data[i].id;
                            var title=data[i].title;
                            var content=data[i].content;
                            $('.news-list').append(makeNewsTemplate(id,title,content));
                        }
                    }
                }
            },error:function () {

            }
        });
    }
    function makeNewsTemplate(id,title,content) {
        var template='<div class="col-md-4 news-item" data-id="'+id+'"  onclick="openNewsDetail(this);">' +
            '                        <div class="row services-item text-center wow" style="padding-bottom:10px;">' +
            '                            <i class="fa icon-cogs icon-3x"></i>' +
            '                            <h4>'+title+'</h4>' +
            '                            <p class="news-item-content">' +
            '                                '+content+'' +
            '                            </p>' +
            '                        </div>' +
            '                    </div>';
        return template;
    }
    //打开新闻详情
    function openNewsDetail(obj) {
        var $obj=$(obj);
        var news_id=$obj.attr('data-id');
        if(news_id!=undefined){
            window.location.href='news_detail.jsp?id='+news_id;
        }else{
            alert('暂时无法查看!');
        }
    }
</script>
</body>
</html>
