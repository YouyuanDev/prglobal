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
