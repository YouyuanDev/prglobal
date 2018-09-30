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
    <style type="text/css">
        .modal-backdrop.in {
            opacity: 0;
        }
        .news-content{
            height:auto;
            clear: both;
        }
        .news-content h1,.news-content h2,.news-content h3,.news-content h4,.news-content h5,.news-content h6,
        .news-content a:hover,.news-content a:focus,.news-content .highlight,.news-content .navbar-custom a,.news-content
        .services-item i,.news-content .client-info h4,.news-content blockquote {
            color: #000;
        }
    </style>
</head>
<body>
<div class="container" style="overflow-y: scroll;">
    <div id="c1" class="modal fade in" style="display: block;overflow-y: scroll;">
        <div class="modal-header">
            <h1>新闻详情</h1>
        </div>
        <div class="modal-body">
            <div class="container modal-container">
                <button type="button" class="close pr-cursor" onclick="closeDetail()"><i class="close-img"></i></button>
                <h4 class="line-left news-title"></h4>
                <div class="modal-services-content news-content">

                </div>
            </div>
        </div>
        <div class="modal-back pr-cursor" style="color:#fff;">
            <a title="返回上一页" onclick="closeDetail()" class="cursor-pointer"><i class="fa fa-chevron-left"></i></a>
        </div>
    </div>
</div>

<script src="../js/jquery.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/wow.min.js"></script>
<script src="../js/pace.min.js"></script>
<script src="../js/jquery.easing.1.3.js"></script>
<script src="../js/jquery.animations.min.js"></script>
<script src="../js/jquery.animations-tile.min.js"></script>

<script type="text/javascript">
    $(function () {
        var id = getUrlParam("id");
        if (id != undefined) {
            getNewsById(id);
        } else {
            makeEmptyTemplate();
        }
    });
    //根据id获取新闻内容
    function getNewsById(id) {
        try {
            $.ajax({
                url: "http://www.topinspector.cn:9090/News/getNewsById.action",
                dataType: 'json',
                data: {
                    id: id,
                },
                success: function (result) {
                    if (result) {
                        if(result.success){
                            var data=result.message;
                            var title = data.title;
                            var content = data.content;
                            $('.news-title').text(title);
                            $('.news-content').html(content);
                        }else{
                            makeEmptyTemplate();
                        }
                    } else {
                        makeEmptyTemplate();
                    }
                }, error: function () {
                    makeEmptyTemplate();
                }
            });
        } catch (e) {
        }
    }
    //返回上一页
    function closeDetail() {
        history.go(-1);
    }
    //空新闻模板
    function makeEmptyTemplate() {
        $('.news-title').text('查询新闻详情失败!');
        var template = '<div style="width:100%;height:500px;line-height:500px;">暂无内容!</div>';
        return template;
    }
    //获取网页url参数
    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        if (r != null) return unescape(r[2]);
        return null; //返回参数值
    }
</script>
</body>

</html>