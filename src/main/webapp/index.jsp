<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 18/9/21
  Time: 下午1:49
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
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link rel="icon" href="favicon.png">
    <link href="css/hallooou.css" rel="stylesheet">
    <link href="css/color_main.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <link href="css/owl.transitions.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        .modal-backdrop.in {
            opacity: 0;
        }
    </style>

</head>

<body id="home">

<%--<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">--%>
<%--<div class="container">--%>
<%--<div class="navbar-header pull-left">--%>
<%--<a class="navbar-brand page-scroll" href="#">--%>
<%--<span class="brand-logo">--%>
<%--<img src="images/logo.png" alt="熊猫救援" title="熊猫救援" class="img-responsive">--%>
<%--<span class="brand-desc">熊猫救援</span>--%>
<%--</span>--%>

<%--</a>--%>
<%--</div>--%>
<%--<ul class="nav navbar-nav visible-lg">--%>
<%--<li>--%>
<%--<a href="#about" class="button">关于熊猫救援</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#news" class="button">新闻动态</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#services" class="button">业务内容</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#team" class="button">熊猫救援团队</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#portfolio" class="button">公司招聘</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#clients" class="button">联系我们</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--<div class="main-nav pull-right">--%>
<%--<div class="button_container toggle">--%>
<%--<span class="fa fa-navicon fa-2x"></span>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="overlay" id="overlay">--%>
<%--<nav class="overlay-menu">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<a href="#about" class="button">关于熊猫救援</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#news" class="button">新闻动态</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#services" class="button">业务内容</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#team" class="button">熊猫救援团队</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#portfolio" class="button">公司招聘</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#clients" class="button">联系我们</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</nav>--%>
<%--</div>--%>
<%--</div>--%>
<%--</nav>--%>

<jsp:include page="common/header.jsp"></jsp:include>

<div style="display: none;" id="allmap"></div>

<header id="intro-carousel" class="carousel slide">
    <!--<div class="carousel-inner">-->
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

<section id="about" class="about content-section alt-bg-light wow fadeInUp" data-wow-offset="10">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>熊猫救援</h2>
                <p style="text-indent:2em;margin-bottom:0">

                </p>
                <p style="text-indent:2em">

                </p>
                <blockquote>
                    <h2>公司文化</h2>
                    <p style="margin-bottom:5px">
                        熊猫救援定位：提供汽车道路救援服务的一家科技创新型公司
                    </p>
                    <p style="margin-bottom:5px">
                        熊猫救援愿景：引领汽车道路救援变革的世界级科技公司
                    </p>
                    <p style="margin-bottom:5px">
                        我们的文化：创造价值，分享价值
                    </p>
                    <p style="margin-bottom:5px">
                        我们的态度：不将就
                    </p>
                </blockquote>
            </div>
            <div class="col-md-6">
                <img src="images/item_01.jpg" class="img-responsive">
            </div>
        </div>
    </div>
</section>

<section id="news" class="counter-section content-section">
    <div class="container">
        <div class="row">
            <div class="col-md-1">
            </div>
            <div class="col-md-5 text-left">
                <h1><a href="news/news_list.jsp">新闻动态</a></h1>
                <h4 class="white"><a href="news/news_list.jsp">聚焦熊猫，随时随地了解更多最新公司资讯</a></h4>
                <div class="news-content scroll-style">
                    <ul id="pr-news">
                        <li data-content="article" data-href="data/Articles/2015-12-25.html">
                            <div class="news-title">
                                熊猫今天起正式上架
                            </div>
                            <span class="pull-right">2015-12-24</span></li>
                        <li data-content="article" data-href="data/Articles/2015-04-20.html">
                            <div class="news-title">
                                熊猫使用手册
                            </div>
                            <span class="pull-right">2015-04-20</span></li>
                        <li data-content="article" data-href="data/Articles/2013-12-18.html">
                            <div class="news-title">
                                熊猫融资三轮融资超1亿
                            </div>
                            <span class="pull-right">2013-12-18</span></li>
                        <li data-content="article" data-href="data/Articles/2013-08-23.html">
                            <div class="news-title">
                                熊猫使用在线人数首次超过2亿
                            </div>
                            <span class="pull-right">2013-08-23</span></li>
                        <li data-content="article" data-href="data/Articles/2013-06-12.html">
                            <div class="news-title">
                                熊猫改革方案具体措施
                            </div>
                            <span class="pull-right">2013-06-12</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6" style="height:264px">
                <div class="fill"
                     style="background:url(images/item_03.jpg) center no-repeat;background-size:contain;margin-top:58px">
                </div>
            </div>
        </div>
    </div>
    <div id="news-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-header">
            <h1>新闻动态</h1>
        </div>
        <div class="modal-body">
            <div class="container modal-container">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="close-img"></i>
                </button>
                <div class="modal-services-content text-left">
                </div>
            </div>
        </div>
        <div class="modal-back">
            <a data-dismiss="modal" title="返回上一页"><i class="fa icon-angle-left"></i></a>
        </div>
    </div>
</section>

<section id="services" class="services content-section">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h2>业务内容</h2>
            </div>
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-6">
                        <div class="row services-item text-center wow flipInX" data-toggle="modal" data-target="#c1"
                             data-wow-offset="10">
                            <i class="fa icon-cogs icon-3x"></i>
                            <h4>汽车救援</h4>
                            <p>
                                汽车在路途中出现故障，还在急于寻找求救电话！！！熊猫救援，一键求救，将最近的维修商户提供给你。
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row services-item text-center wow flipInX" data-toggle="modal" data-target="#c2"
                             data-wow-offset="10">
                            <i class="fa icon-dashboard icon-3x"></i>
                            <h4>智能推荐</h4>
                            <p>
                                熊猫救援根据车型、用户爱好等自动推荐适合您的维修商户，多重选择，提高了你的搜索效率。
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="c1" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-header">
                <h1>业务内容</h1>
            </div>
            <div class="modal-body">
                <div class="container modal-container">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i
                            class="close-img"></i></button>
                    <h4 class="line-left">汽车救援</h4>
                    <div class="modal-services-content">
                        <ul>
                            <li>
                                <h5>自动搜索附近商户</h5>
                                <p>
                                    用户开启位置信息，系统会自动搜索附近维修商户信息，简化用户搜索
                                </p>
                                <img src="picture/c1.jpg" alt="渠道推广"></li>
                            <li>
                                <h5>一键求救，简化用户选择</h5>
                                <p>
                                    用户只需描述车体损坏类型便可，然后一键求救，等待附近维修商户接收求救消息
                                </p>
                                <img src="picture/c2.jpg" alt="渠道推广"></li>
                            <li>
                                <h5>一体化管理</h5>
                                <p>
                                    系统集成普通用户和商户两种类型，随时切换账户类型，方便快捷
                                </p>
                                <img src="picture/c3.jpg" alt="渠道推广"></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="modal-back">
                <a data-dismiss="modal" title="返回上一页"><i class="fa icon-angle-left"></i></a>
            </div>
        </div>
        <div id="c2" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-header">
                <h1>智能推荐</h1>
            </div>
            <div class="modal-body">
                <div class="container modal-container">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i
                            class="close-img"></i></button>
                    <h4 class="line-left">简化用户操作</h4>
                    <div class="modal-services-content">
                        <p>
                            系统会主动推荐给用户比较经济而且能够快速到达地点的商户，缩短了用户的搜索时间
                        </p>
                        <img src="picture/flow.jpg" alt="流量营销">
                    </div>
                </div>
            </div>
            <div class="modal-back">
                <a data-dismiss="modal" title="返回上一页"><i class="fa icon-angle-left"></i></a>
            </div>
        </div>
    </div>
</section>

<section id="team" class="team content-section">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h2>熊猫救援团队</h2>
                <h3 class="caption gray">万夫一力，天下无敌。</h3>
            </div>
        </div>
    </div>
    <div class="container project-container text-center">
        <div class="team-project-carousel owl-carousel owl-theme popup-gallery">
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_04.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_05.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_06.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_07.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_08.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_09.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_10.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
            <div class="item team-project wow fadeIn">
                <div class="team-member wow fadeIn" data-wow-offset="10">
                    <figure><img src="images/item_11.jpg" alt="" class="img-responsive"></figure>
                </div>
            </div>
        </div>
        <%--<div class="customNavigation project-navigation text-center">--%>
        <%--<a class="btn-prev"><i class="fa fa-chevron-left fa-2x"></i></a>--%>
        <%--<a class="btn-next"><i class="fa fa-chevron-right fa-2x"></i></a>--%>
        <%--</div>--%>
    </div>
</section>

<section class="testimonials content-section wow fadeIn" data-wow-offset="10">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="client-testimonials owl-carousel owl-theme">
                            <div class="item">
                                <p class="speech">
                                    山在前方，他不来我便向他走去
                                </p>
                                <div class="client-info">
                                    <img src="picture/tx1.jpg">
                                    <h4>CEO</h4>
                                    <span>熊猫救援CEO</span>
                                </div>
                            </div>
                            <div class="item">
                                <p class="speech">
                                    阻挡前进的只有自己
                                </p>
                                <div class="client-info">
                                    <img src="picture/tx3.jpg">
                                    <h4>工程师</h4>
                                    <span>熊猫救援研发部</span>
                                </div>
                            </div>
                            <div class="item">
                                <p class="speech">
                                    对技术精益求精，对产品追求完美
                                </p>
                                <div class="client-info">
                                    <img src="picture/tx2.jpg">
                                    <h4>工程师</h4>
                                    <span>熊猫救援技术部</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="portfolio" class="portfolio content-section">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-12">
                <h2>招聘岗位</h2>
                <h3 class="caption white">有意加入熊猫，请将个人简历发至<a class="highlight" href="#">topinspector@youyuantech.com</a>，谢谢！联系电话：021-66650051
                </h3>
            </div>
        </div>
    </div>
    <div class="container text-center">
        <table class="table table-bordered">
            <tr>
                <td data-index="0" class="p10">
                    .NET开发工程师
                </td>
                <td data-index="1" class="p05">
                    Java开发工程师
                </td>
                <td data-index="2" class="p10">
                    前端开发工程师
                </td>
                <td data-index="3" class="p05">
                    产品经理
                </td>
            </tr>
            <tr>

            </tr>
            <tr>
                <td data-index="4" class="p05">
                    文案策划（宣传部）
                </td>
                <td data-index="5" class="p05">
                    商务专员（广告）
                </td>
            </tr>
        </table>
    </div>
    <div class="container project-container text-center">
        <div class="recent-project-carousel owl-carousel owl-theme popup-gallery">
            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">.NET开发工程师1名</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>本科/研究生计算机相关专业毕业1年以上</li>
                        <li>熟悉C#开发、Winform开发，有大访问量web服务端开发经验</li>
                        <li>熟悉主流的数据库，MySql/SqlServer/Oracle</li>
                        <li>熟悉软件开发的全过程，有带领团队开发经验优先考虑</li>
                    </ol>
                    <div class="job-tips">
                        <p>
                            注：主持或者作为主要成员参与过满足下列条件的产品\项目优先考虑：
                        </p>
                        <p>
                            1、每秒访问1000次以上
                        </p>
                        <p>
                            2、每日数据量千万级以上
                        </p>
                    </div>
                </div>
            </div>
            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">Java工程师1名</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>计算机、电子信息技术及其相关专业本科以上学历，英语4级以上</li>
                        <li>1年以上Java开发经验</li>
                        <li>1年以上Java应用程序开发经验，有完整产品和项目开发经验</li>
                        <li>熟悉常用的数据结构和算法，深刻理解OOP，有良好的编程风格和文档习惯</li>
                        <li>具有团队合作精神和沟通技巧，工作认真细致，责任心强，能承受较大的工作压力</li>
                        <li>良好的学习能力，能独立钻研解决技术问题</li>
                    </ol>
                </div>
            </div>
            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">前端开发工程师1名</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>熟练使用DW等网页制作工具，能根据高保真通过工具或者手写HTML和CSS代码</li>
                        <li>深刻理解页面布局原理和特性，能快速采用DIV+CSS构建出兼容主流浏览器的页面</li>
                        <li>
                            熟悉Javascript，能独立完成Javascript代码的编写和优化工作，能熟练使用JQuery；熟悉常用的1-2种ajax技术及框架（jquerytools/extjs/Bootstrap等）
                        </li>
                        <li>了解c#，java等主流程序开发语言，能配合开发人员进行页面联调整合</li>
                        <li>良好的项目意识和沟通表达能力，工作积极主动，能承受一定的工作压力</li>
                        <li>有MobileWeb或html5开发经验和作品者优先</li>
                    </ol>
                </div>
            </div>

            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">产品经理1名</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>本科或以上学历，计算机或管理专业</li>
                        <li>对WEB、APP及H5等多产品类型有深入了解</li>
                        <li>较强的文字驾驭能力和沟通能力，能够与客户开发和实施等人员顺畅交流</li>
                        <li>具有较强的逻辑思维能力和抽象提炼能力，工作主动细心，执行力强，有责任心，有团队精神</li>
                        <li>熟悉visio、Axure、MindManage软件,并熟练掌握word、excel、ppt等office软件</li>
                        <li>有产品经理助理或项目策划助理经验优先</li>
                    </ol>
                </div>
            </div>
            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">文案策划（宣传部）1名</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>大专及以上学历，1年以上文案策划相关工作经验，有新媒体传播经验优先</li>
                        <li>熟悉广告宣传运作模式，具备创意思维，品牌推广理念</li>
                        <li>具备良好的文字驾驭能力，能够做出恰如其分的表达，文笔流畅</li>
                        <li>有较强的沟通和理解能力，良好的职业素养，乐观开朗，能够承受一定的工作压力</li>
                    </ol>
                </div>
            </div>

            <div class="item recent-project wow fadeIn" data-wow-offset="10">
                <div class="container text-left">
                    <h4 class="title">商务专员（广告）</h4>
                    <ul class="title-second">
                        <li>任职资格</li>
                    </ul>
                    <ol>
                        <li>有互联网广告销售经验</li>
                        <li>有较好的表达能力，为人活泼开朗，有上进心，能主动加班</li>
                        <li>对互联网和移动互联网有一定的认知能力，了解互联网和移动互联网广告形式</li>
                        <li>有电话销售经验优先</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="customNavigation project-navigation text-center">
            <a class="btn-prev"><i class="fa fa-chevron-left fa-2x"></i></a>
            <a class="btn-next"><i class="fa fa-chevron-right fa-2x"></i></a>
        </div>
    </div>
</section>

<jsp:include page="common/footer.jsp"></jsp:include>
<%--<footer id="clients">--%>
<%--<div class="container contact" style="padding-left:0px;width:80%;">--%>
<%--<div class="row">--%>
<%--<div class="col-md-7">--%>
<%--<p class="highlight" style="padding-left:15px;">联系方式</p>--%>
<%--<ul>--%>
<%--<li>地址：上海市宝山区同济支路199号6211室</li>--%>
<%--<li>电话：021-66650051</li>--%>
<%--<li>邮箱：topinspector@youyuantech.com</li>--%>
<%--</ul>--%>
<%--<ul>--%>
<%--<li>商务QQ：94563674（王先生）</li>--%>
<%--<li>人事QQ：94563674（王先生）</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="col-md-5">--%>
<%--<p class="highlight">关注我们</p>--%>
<%--<ul class="contact-ul">--%>
<%--<li><span class="fa fa-weibo"></span></li>--%>
<%--<li><span class="fa fa-weixin"></span></li>--%>
<%--<li><span class="fa fa-qq"></span></li>--%>
<%--<li><span class="fa fa-facebook-f"></span></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="container about" style="padding-left:0px;width:80%;">--%>
<%--<div class="row ">--%>
<%--<div class="col-md-7">--%>
<%--<div class="row">--%>
<%--<div class="col-md-9 link">--%>
<%--<ul>--%>
<%--<li>--%>
<%--<p class="highlight">关于我们</p>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">公司概况</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">公司文化</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">发展历程</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--<ul>--%>
<%--<li>--%>
<%--<p class="highlight">公司业务</p>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a data-toggle="modal" data-target="#c1">汽车救援</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a data-toggle="modal" data-target="#c1">智能推荐</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--<ul>--%>
<%--<li>--%>
<%--<p class="highlight">新闻动态</p>--%>
<%--</li>--%>
<%--<li>新闻</li>--%>
<%--</ul>--%>
<%--<ul>--%>
<%--<li>--%>
<%--<p class="highlight">联系我们</p>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">福利待遇</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">招聘岗位</a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#">公司招聘</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-5 company-ico">--%>
<%--<p class="highlight">客户端下载</p>--%>
<%--<div class="company-code">--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="copynote">--%>
<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<div class="col-md-2 text-left" style="padding-left:4px">--%>
<%--<a class="btn-lang active line">简体中文</a>--%>
<%--<a class="btn-lang">English</a>--%>
<%--</div>--%>
<%--<div class="col-md-10 text-right">--%>
<%--Copyright &copy; 2018. All Rights Reserved. 沪ICP备18028516号--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="nav pull-right scroll-top">--%>
<%--<a href="#" title="滚动到最顶端"><i class="fa fa-chevron-up"></i></a>--%>
<%--</div>--%>
<%--</footer>--%>

<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.countto.js"></script>
<script src="js/jquery.inview.min.js"></script>
<script src="js/pace.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/additional-methods.min.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=D2L3712Q1xrv13ExenBA6G3NyD4t4xl2"></script>
<script src="js/jquery.animations.min.js"></script>
<script src="js/jquery.animations-tile.min.js"></script>
<script src="js/hallooou.js"></script>
<script type="text/javascript">
    $(function () {
        loadRecentNews();
    });

    function loadRecentNews() {
        try {
            $.ajax({
                url: "http://www.topinspector.cn:9090/News/getNewsByLike.action",
                dataType: 'json',
                data: {
                    page: 1,
                    rows: 10
                },
                dataType: 'json',
                success: function (result) {
                    if (result) {
                        var data = result.rows;
                        if (data.length > 0) {
                            for (var i = 0; i < data.length; i++) {
                                var id = data[i].id;
                                var title = data[i].title;
                                var time = getDate0(data[i].publish_time);
                                $('#pr-news').append(makeNewsTemplate(id, title, time));
                            }
                        }
                    }
                }, error: function () {

                }
            });

        } catch (e) {

        }
    }

    function makeNewsTemplate(id, title, time) {
        var template = ' <li data-content="article" data-id="' + id + '" onclick="openNewsDetail(this);">' +
            '                            <div class="news-title">' +
            '                                ' + title + '' +
            '                            </div>' +
            '                            <span class="pull-right">' + time + '</span></li>';
        return template;
    }

    //打开新闻详情
    function openNewsDetail(obj) {
        var $obj = $(obj);
        var news_id = $obj.attr('data-id');
        if (news_id != undefined) {
            window.location.href = 'news/news_detail.jsp?id=' + news_id;
        } else {
            alert('暂时无法查看!');
        }
    }
</script>
</body>

</html>
