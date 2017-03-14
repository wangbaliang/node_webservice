{#  页面地址：www./download
创建时间：2016.12.27
创 建 者：liuchun
创建原因：简教练落地页1  #}
{% extends 'common/layout.tpl' %}
{% block head_title %}简教练在线{% endblock %}
{% block head_css %}
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="网校，中学网校">
  <meta name="description" content="简单学习网，中学网校首选。依托北京大学研发的'CAT技术',是中国第一家互动视频网校。简单学习网为您提供网络课程,中考网络视频课程辅导,高考网络视频课程辅导。">
  <title>简教练在线</title>
  <link rel="stylesheet" type="text/css" href="http://css.jd100.com/css/base.css">
  <link rel="stylesheet" type="text/css" href="http://css.jd100.com/css/common.css">
  <link rel="stylesheet" type="text/css" href="http://css.jd100.com/css/register.css">
  <link rel="stylesheet" type="text/css" href="http://css.jd100.com/css/coursehome.css">
  <script type="text/javascript" src="http://www.jd100.com/js/et.js"></script>
  <script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/AC_RunActiveContent.js"></script>
  <script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/other.js"></script>
  <script type="text/javascript" src="http://www.jiandan100.cn/js/et.js?201307101816"></script>
  <script type="text/javascript" src="http://www.jiandan100.cn/js/etsrc/other/other.js?201307101816"></script>
  <script type="text/javascript" src="http://www.jd100.com/js/libs/jquery.cookie.js" ></script>
  <script>
    function getCookie(cookie_name) {
      var allcookies = document.cookie;
      var cookie_pos = allcookies.indexOf(cookie_name);
      if (cookie_pos != -1) {
        cookie_pos += cookie_name.length + 1;
        var cookie_end = allcookies.indexOf(";", cookie_pos);
        if (cookie_end == -1) {
          cookie_end = allcookies.length;
        }
        var value = unescape(allcookies.substring(cookie_pos, cookie_end));
      }
      return value;
    }
    (function (a, b) { if ((/AppleWebKit.*Mobile/i.test(a) || /Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(a) || /MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(a)) && location.hash != '#m') window.location = b })(navigator.userAgent, '//m.jd100.com/user/advert2/?c='+getCookie('_INVITECODE_NEW'))
  </script>
  <!--只是为了使用轮播图功能,最好自己重写一个-->
  <script type="text/javascript" src="http://www.jd100.com/z/statics/js/qqzone/20150414.1.js"></script>
  <link rel="stylesheet" type="text/css" href="http://www.jiandan100.cn/css/base.css?201307101816">
  <link rel="stylesheet" type="text/css" href="http://www.jiandan100.cn/css/common.css?201307101816">
  <style type="text/css">
    .container {
      margin: 0 auto;
      width: 1000px;
    }

    .tftop_nav {
      margin: 19px 0 9px 115px;
      font-family: "微软雅黑";
    }

    .tftop_nav li {
      float: left;
      display: inline-block;
    }

    .tftop_nav span {
      height: 15px;
      color: #323232;
    }

    .tftop_nav a {
      padding: 0 19px;
      font-size: 14px;
      color: #323232;
      line-height: 26px;
    }

    .tftop_person {
      padding-top: 19px;
    }

    .tftop_person li {
      float: left;
      display: inline-block;
    }

    .tftop_person a {
      display: inline-block;
      margin-right: 2px;
      width: 58px;
      height: 26px;
      line-height: 26px;
      text-align: center;
      font-size: 14px;
      color: #fff;
    }

    a.bgc49:link, a.bgc49:visited {
      background-color: #c4900d;
    }

    a.bgc49:hover, a.bgc49:active {
      background-color: #9c730c;
      text-decoration: none;
    }

    a.bgblue:link, a.bgblue:visited {
      background-color: #14a7ed
    }

    a.bgblue:hover, a.bgblue:active {
      background-color: #0d8ecc;
      text-decoration: none;
    }

    .tfbanner{display:block; width:100%; height:800px; background:url("../image/tutorshow/advert_top.png") no-repeat center top;}

    .tfwrap {
      font-family: "微软雅黑";
    }

    dl {
      display: inline;
      float: left;
      margin: 0px;
      width: 196px;
      border-left: 1px solid #505050;
      line-height: 35px;
    }

    dl dt {
      font-size: 48px;
      font-weight: bolder;
      color: #21ade5;
      text-align: center;
    }

    .adv {
      position: relative;
    }

    .course-box {
      border-radius: 4px;
      background: #fff;
      box-shadow: 0 1px 2px rgba(0, 0, 0, 0.45);
      transition: box-shadow 0.2s;
      margin: 15px;
      float: left;
      display: inline;
      height: 290px;
      position: relative;
    }

    .course-box:hover {
      box-shadow: 0 2px 3px rgba(0, 0, 0, 1.0);
      transition: box-shadow 0.2s;
      background: #fafafa;
    }

    .course-thumb img {
      width: 300px;
      height: 150px;
      border-top-left-radius: 4px;
      -moz-border-radius-top-left: 4px;
      -webkit-border-top-left-radius: 4px;
      border-top-right-radius: 4px;
      -moz-border-radius-topright: 4px;
      -webkit-border-top-right-radius: 4px;
      overflow: hidden;
    }

    .course-box a:hover {
      text-decoration: none;
    }

    .mask {
      color: #353535;
      display: block;
      font-size: small;
      width: 300px;
      height: 290px;
      overflow: hidden;
      text-decoration: none;
    }

    .stu {
      margin-top: 3px;
      color: #777;
      float: left;
      background: url(http://www.jd100.com/z/uploadfile/2015/0126/20150126034608627.png) no-repeat top left;
      line-height: 16px;
      padding-left: 21px;
      height: 35px;
      text-align: left;
    }

    .title {
      display: block;
      font-size: 15px;
      line-height: 1.5;
      min-height: 30px;
      overflow: hidden;
      padding: 10px 10px 0px;
      font-weight: bold;
    }

    .details {
      display: block;
      overflow: hidden;
      padding: 5px 10px 5px;
      text-align: center;
      width: 90%
    }

    .instructors {
      border-top: 1px solid #eee;
      display: block;
      margin: 0 10px;
      overflow: hidden;
      padding: 10px 0;
    }

    .instructors .r {
      margin-left: 33px;
      display: block;
      float: left;
      margin-left: 5px;
    }

    .ins-thumb {
      float: left;
      border-radius: 4px;
      margin-right: 5px;
      height: 25px;
    }

    .ins-name {
      font-size: 12px;
      font-weight: bold;
      line-height: 14px;
    }

    .ins-job-title {
      margin-top: 2px;
      font-size: 12px;
      line-height: 2;
      color: #555;
    }

    .button {
      margin: 30px 0 40px 0;
    }

    .ui-button {
      display: inline-block;
    }

    .ui-button-l {
      width: 240px;
      height: 35px;
      padding: 15px 25px;
      line-height: 35px;
      font-size: 26px;
      text-align: center;
      border-radius: 30px;
    }

    .ui-button-s {
      width: 70px;
      height: 20px;
      padding: 10px 20px;
      font-size: 17px;
      text-align: center;
      border-radius: 20px;
    }

    .ui-button:link, .ui-button:visited, .ui-button:hover, .ui-button:active {
      color: #fff;
      text-decoration: none;
    }

    .ui-button-blue {
      background-color: #14a7ed;
    }

    .ui-button-blue:hover {
      background-color: #41b4eb;
    }

    .ui-button-red {
      background-color: #ff5f5f;
    }

    .ui-button-red:hover {
      background-color: #ff9898;
    }

    #option {
      position: fixed;
      z-index: 1001;
    }

    .tag_2_hd48 li {
      float: left;
      position: relative;
      height: 48px;
      line-height: 48px;
      width: 50%;
      font-size: 20px;
      font-weight: bold;
      color: #007DAB;
      background-color: #EAEAEA;
      text-align: center;
      z-index: 1;
      cursor: pointer;
      border-radius: 10px;
    }

    .tag_2_hd48 li.curTag {
      background-color: #DA531E;
      color: #fff;
    }

    .tag_2_hd48 .cms-icon-arrows {
      display: none;
      left: 48%;
      bottom: -8px;
      z-index: 2;
    }

    .tag_2_hd48 li.curTag .cms-icon-arrows {
      display: block;
    }

    .cms-icon-arrows {
      display: inline-block;
      height: 0;
      width: 0;
      margin: 0;
      padding: 0;
      border-width: 4px;
      font-style: normal;
      font-size: 0;
      font-weight: normal;
      line-height: 0;
      position: absolute;
    }

    .cms-icon-arrows-down {
      border-color: #007DAB transparent transparent transparent;
      border-style: solid dashed dashed dashed;
    }

    .tifenCon {
      margin: 0 auto;
      width: 990px;
    }

    .bgd4 {
      background-color: #d4f0fd;
    }

    .bgf2 {
      background-color: #fff;
    }

    .bgf8 {
      background-color: #fff;
    }

    .tfwrap h2 {
      height: 90px;
      line-height: 90px;
      font-size: 30px;
      text-align: center;
    }

    .tfwrap p {
      height: 28px;
      line-height: 28px;
      font-size: 20px;
      text-align: center;
    }

    .font_corlor32 {
      color: #323232;
    }

    .font_corlor9a {
      color: #9a856d;
    }

    .font_corloreb6 {
      color: #ff5001;
    }

    .font_corlorf29 {
      color: #ff5001;
    }

    .tifen_grade_tab a {
      display: inline-block;
      width: 160px;
      height: 44px;
      line-height: 44px;
      border: 1px solid #a86f17;
      color: #ff5f5f;
      font-size: 26px;
      text-align: center;
    }

    .tifen_grade_tab a:hover {
      background-color: #ff5f5f;
      color: #fff;
      text-decoration: none;
    }

    .tifen_grade_tab a.tifen_grade_tab_current {
      background-color: #ff5f5f;
      color: #fff;
    }

    .tifen_detail {
      margin: 15px 10px;
      float: left;
      display: inline-block;
      position: relative;
      width: 310px;
      height: 220px;
      overflow: hidden;
      zoom: 1;
    }

    .tifen_detail h3 {
      position: absolute;
      top: 182px;
      height: 38px;
      width: 310px;
      line-height: 38px;
      font-size: 16px;
      color: #fff;
      background-color: #000;
      opacity: 0.5;
      text-align: center;
    }

    .fBtn_play {
      display: block;
      position: absolute;
      top: 96px;
      left: 138px;
      width: 40px;
      height: 40px;
      background: url("../images/course/fBtn_play.png") no-repeat;
      _background: url(../../images/course/fBtn_play_ie6.png) no-repeat;
      text-indent: -9999px;
      cursor: pointer;
      z-index: 1;
    }

    .tifen_listLeftImg {
      padding-top: 40px;
    }

    .tifen_listLeftImg li {
      padding: 40px 10px 0 0;
      float: left;
      display: inline;
      width: 450px;
      height: 134px;
      border-bottom: 1px solid #fd7f68;
    }

    .tifen_listLeftImg_l {
      width: 114px;
      float: left;
      display: inline;
    }

    .tifen_listLeftImg_r {
      width: 330px;
      float: right;
      display: inline;
    }

    .bottomTip-content dl{
      width: inherit;
      border-left: none;
      line-height: inherit;
    }
    .tifen_listLeftImg_r .g_student_name {
      padding-left: 5px;
      margin-bottom: 5px;
      height: 30px;
      line-height: 30px;
      font-size: 20px;
      background-color: #ffe9e4;
      color: #ff5001;
    }

    .tifen_listLeftImg_r p.g_student_essays {
      padding-right: 5px;
      font-size: 12px;
      color: #646464;
      line-height: 24px;
      text-align: left;
    }

    h4 {
      height: 120px;
      line-height: 120px;
      font-size: 26px;
      color: #ff5001;
      text-align: center;
    }

    a.log_regbutton {
      display: inline-block;
      margin: 0 300px 100px;
      cursor: pointer;
    }

    a.detail_btn {
      margin-left: 260px;
      display: inline-block;
      width: 65px;
      height: 20px;
      line-height: 20px;
      color: #fff;
      background-color: #13A7ED;
      text-align: center;
      cursor: pointer;
    }

    .detail_btn:hover {
      color: #fff;
      background-color: #0098e0;
      text-decoration: none
    }
    .newTerm-bottomTip{ position: fixed; bottom: 0; left: 0; z-index: 99; width: 100%; height: 60px;  background-color: rgba(0,0,0,0.75)!important; filter:Alpha(opacity=95); background:#000; }
    .bottomTipContent{ position: relative; width: 990px; height: 100px; padding-top: 16px; line-height: 32px; margin: 0 auto; color: #fff; font-size: 23px; text-align: center; }
    .bottomTipContent span{ position: absolute; right: 0; top: 0; width: 32px; }
    .bottomTipContent span:hover{ background-color: #C4C4C4; color: #262626; }
    /*浮动广告*/
    .qr_code_ad{position:fixed; right:-15px; top:10px; width:190px; height:700px; z-index:9999;
      *zoom:1;
    }
    .qr_zb{display:inline-block; width:153px; height:335px; cursor:pointer;}

    .gkzb_ad{
      background:url(http://www.jd100.com/z/uploadfile/2016/1222/20161222031347232.png) no-repeat 0 0;
    }
    .qr_code_ad .title a{position:absolute; left:140px; top:20px;  width:22px; height:22px; background-image:url(../images/main/close_btn.png); background-repeat:no-repeat; background-position:0 0; z-index:9999;}
    .qr_code_ad .title a:hover,.qr_code_ad .title a:active{background-position:0 -36px;}


  </style>
{% endblock %}
{% block body %}
<div class="navigation" id="top">
  <div class="container-1000">
    <a href="/" class="logo" target="_blank" style="margin: 14px 15px 0 0"><img src="{{ 'image/tutorshow/logo_csl.png'|staticFile }}" alt="logo"></a>
    <div class="navi-item">
      <a href="/" target="_blank">首页</a>
      <a href="/courseinfo" target="_blank">课程设置</a>
      <a href="/coachmode" target="_blank">教练模式</a>
      <a href="/famousteacher" target="_blank">名师+教练</a>
      <a href="/wordofmouth" target="_blank">用户口碑</a>
      <a href="/experience" target="_blank">体验中心</a>
    </div>
    <div class="advert1-navi fn-right">
      <a href="/login">登录</a>
      <a href="/register" class="btn-white-rose">立即注册免费体验</a>
    </div>
  </div>
</div>
<a href="/register" class="tfbanner"></a>
<div class="bgf8">
  <div class="container">
    <div class="clearfix">

      <div class="clearfix fn-clear" style="margin:0 0 25px 0;padding-top:30px">
        <h1 class="font_corloreb6" style="font-size:40px;font-weight:bolder;color:#21ade5;text-align:center;margin:40px 0 10px 0;">免费预约教练，带你学习视频课，效果更好！</h1>

      </div>

      <div class="clearfix fn-clear" style="margin:0 0 15px 0;padding-top:50px">
        <ul class="tabTag_zt1 tag_2_hd48">
          <li onmousemove="setTab('zt1',0);" class="curTag"
              style="width:140px;margin-right:30px;margin-left:18px;">高一<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>
          <li onmousemove="setTab('zt1',1);" style="width:140px;margin-right:10px;">高二<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>

          <li onmousemove="setTab('zt1',2);" style="width:140px;margin-left:10px;">高三<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>
          <li onmousemove="setTab('zt1',3);" style="width:140px;margin-left:20px;">初一<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>
          <li onmousemove="setTab('zt1',4);" style="width:140px;margin-left:20px;">初二<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>
          <li onmousemove="setTab('zt1',5);" style="width:140px;margin-left:20px;">初三<em
                  class="cms-icon-arrows cms-icon-arrows-down"></em></li>
        </ul>
      </div>
      <div class="tabCon_zt1 freecourses clearfix">
        <div class="cms-term-table fn-clear" style="display: block;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064517181.jpg"></span>
                <span class="title">高一物理：运动的合成与分解</span>
                <span class="details">
                <span class="stu">关于运动的合成与分解你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽 </span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063553779.jpg"></span>
                <span class="title">高一数学：点线面的位置关系</span>
                <span class="details">
                <span class="stu">关于点线面的位置关系你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/wangchen_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">王晨 </span>
                <span class="ins-job-title">北京市数学名师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063553861.jpg"></span>
                <span class="title">高一数学：变量的相关性</span>
                <span class="details">
                <span class="stu">关于变量的相关性你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xiongdan_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">熊丹</span>
                <span class="ins-job-title">高中数学骨干教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064647256.jpg"></span>
                <span class="title">高一化学：化学能与热能</span>
                <span class="details">
                <span class="stu">关于化学能与热能你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063553306.jpg"></span>
                <span class="title">高一数学：三角函数的诱导公式</span>
                <span class="details">
                <span class="stu">关于三角函数的诱导公式你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">王老师 </span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064055502.jpg"></span>
                <span class="title">高一英语：Astronomy:the science of the stars</span>
                <span class="details">
                <span class="stu">让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064516691.jpg"></span>
                <span class="title">高一物理：平抛运动</span>
                <span class="details">
                <span class="stu">关于平抛运动你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽 </span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064647770.jpg"></span>
                <span class="title">高一化学：化学键</span>
                <span class="details">
                <span class="stu">关于化学键你都掌握好了吗？让简教练老师带你一起巩固提高吧！ </span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220064517825.jpg"></span>
                <span class="title">高一物理：圆周运动</span>
                <span class="details">
                <span class="stu">关于圆周运动你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="cms-term-table fn-clear fn-hide" style="display:none;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010652343.jpg"></span>
                <span class="title">高二数学：命题及其关系</span>
                <span class="details">
                <span class="stu">关于命题及其关系你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">王老师</span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080659573.jpg"></span>
                <span class="title">高二物理：电磁感应与动能定理</span>
                <span class="details">
                <span class="stu">关于电磁感应与动能定理你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080700253.jpg"></span>
                <span class="title">高二数学：椭圆的最值问题</span>
                <span class="details">
                <span class="stu">关于椭圆的最值问题你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">王老师</span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010729487.jpg"></span>
                <span class="title">高二化学：化学反应与能量</span>
                <span class="details">
                <span class="stu">关于化学反应与能量你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080700334.jpg"></span>
                <span class="title">高二数学：排列与组合综合</span>
                <span class="details">
                <span class="stu">关于排列与组合综合你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">王老师 </span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010719223.jpg"></span>
                <span class="title">高二物理：静电场</span>
                <span class="details">
                <span class="stu">关于静电场你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010710659.jpg"></span>
                <span class="title">高二英语：Great Scientists</span>
                <span class="details">
                <span class="stu">关于Great Scientists你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080700913.jpg"></span>
                <span class="title">高二物理：动量与冲量</span>
                <span class="details">
                <span class="stu">关于动量与冲量你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080700707.jpg"></span>
                <span class="title">高二化学：影响化学反应速率的因素</span>
                <span class="details">
                <span class="stu">关于影响化学反应速率的因素你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="cms-term-table fn-clear fn-hide" style="display:none;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080824371.jpg"></span>
                <span class="title">高三数学：函数的相关问题</span>
                <span class="details">
                <span class="stu">关于函数的相关问题你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg">
                <span class="r">
                <span class="ins-name">王老师</span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080824507.jpg"></span>
                <span class="title">高三物理：功、功率、动能定理</span>
                <span class="details">
                <span class="stu">关于功、功率、动能定理你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg">
                <span class="r">
                <span class="ins-name">徐剑烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080825292.jpg"></span>
                <span class="title">高三化学：无机化学综合经典精讲</span>
                <span class="details">
                <span class="stu">关于无机化学综合经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080825648.jpg"></span>
                <span class="title">高三数学：圆锥曲线解题规律</span>

                <span class="details">
                <span class="stu">关于圆锥曲线解题规律你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg">
                <span class="r">
                <span class="ins-name">王老师 </span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080824557.jpg"></span>
                <span class="title">高三物理：动能定理与能量守恒</span>
                <span class="details">
                <span class="stu">关于动能定理与能量守恒你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080824352.jpg"></span>
                <span class="title">高三数学：三角函数与解三角形</span>
                <span class="details">
                <span class="stu">关于三角函数与解三角形你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/wangchunhui_s.jpg">
                <span class="r">
                <span class="ins-name">王老师</span>
                <span class="ins-job-title">数学特级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080824593.jpg"></span>
                <span class="title">高三物理：带电物体在电场中的运动</span>
                <span class="details">
                <span class="stu">关于带电物体在电场中的运动你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/xujianfeng_s.jpg">
                <span class="r">
                <span class="ins-name">徐建烽</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080825715.jpg"></span>
                <span class="title">高三英语：阅读理解经典精讲</span>
                <span class="details">
                <span class="stu">关于阅读理解经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师 </span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask" href="/register">
                <span class="course-thumb"><img class="lazy" src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080825242.jpg"></span>
                <span class="title">高三化学：有机化学综合经典精讲</span>
                <span class="details">
                <span class="stu">关于有机化学综合经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img class="lazy ins-thumb" src="http://image.jiandan100.cn/data/images/teacher/zhouyehong_s.jpg">
                <span class="r">
                <span class="ins-name">周业虹</span>
                <span class="ins-job-title">北京市化学特级教师</span>
                </span>
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="cms-term-table fn-clear fn-hide" style="display:none;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063049183.jpg"></span>
                <span class="title">初一数学：平行中的计算</span>
                <span class="details">
                <span class="stu">平行中的计算你掌握好了吗？快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063253340.jpg"></span>
                <span class="title">初一英语：Can you play the guitar</span>
                <span class="details">
                <span class="stu">Can you play the guitar你掌握好了吗？快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲 </span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063050104.jpg"></span>
                <span class="title">初一数学：平行线中的证明</span>
                <span class="details">
                <span class="stu">平行线中的证明你掌握好了吗？快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德</span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063254110.jpg"></span>
                <span class="title">初一英语：How do you get to school</span>
                <span class="details">
                <span class="stu">快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063049846.jpg"></span>
                <span class="title">初一数学：平方根与算数平方根</span>
                <span class="details">
                <span class="stu">平方根与算数平方根你掌握好了吗？快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063207744.jpg"></span>
                <span class="title">初一数学：立方根与实数</span>
                <span class="details">
                <span class="stu">立方根与实数你掌握好了吗？快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德</span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063254860.jpg"></span>
                <span class="title">初一英语：What time do you go to school</span>
                <span class="details">
                <span class="stu">快来来听课巩固基础，提升解题能力吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲 </span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063049596.jpg"></span>
                <span class="title">初一数学：实数性质相关计算</span>
                <span class="details">
                <span class="stu">实数性质相关计算你掌握好了吗？快来来听课巩固基础，提升解题能力吧！ </span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德</span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220063050740.jpg"></span>
                <span class="title">初一数学：初一下同步提高课</span>
                <span class="details">
                <span class="stu">课程听懂了但是不太会做题？快来听同步提高课总结知识点的具体运用方法吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="cms-term-table fn-clear fn-hide" style="display:none;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010115307.jpg"></span>
                <span class="title">初二数学：勾股定理</span>
                <span class="details">
                <span class="stu">关于勾股定理你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010221163.jpg"></span>
                <span class="title">初二物理：运动和力 </span>
                <span class="details">
                <span class="stu">关于运动和力你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/haocheng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">郝老师 </span>
                <span class="ins-job-title">物理高级教师 </span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010156342.jpg"></span>
                <span class="title">初二英语：完型填空专项突破</span>
                <span class="details">
                <span class="stu">关于完型填空专项突破你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010134949.jpg"></span>
                <span class="title">初二数学：二次根式</span>
                <span class="details">
                <span class="stu">关于二次根式你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德</span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010206482.jpg"></span>
                <span class="title">初二英语：what's the matter</span>
                <span class="details">
                <span class="stu">关于新课的语法运用你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲 </span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010146652.jpg"></span>
                <span class="title">初二数学：平行四边形</span>
                <span class="details">
                <span class="stu">关于平行四边形你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/huangwei_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">黄老师</span>
                <span class="ins-job-title">重点中学数学教研组组长</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080617801.jpg"></span>
                <span class="title">初二物理：牛顿定律</span>
                <span class="details">
                <span class="stu">关于牛顿定律你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/tianpeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">田鹏 </span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080444539.jpg"></span>
                <span class="title">初二英语：Could you please clean your room</span>
                <span class="details">
                <span class="stu">关于新课的语法运用你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲</span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010232124.jpg"></span>
                <span class="title">初二物理：压强</span>
                <span class="details">
                <span class="stu">关于压强你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/tianpeng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">田鹏</span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
          </ul>
        </div>
        <div class="cms-term-table fn-clear fn-hide" style="display:none;">
          <ul class="clearfix">
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010301983.jpg"></span>
                <span class="title">初三数学：一元二次方程</span>
                <span class="details">
                <span class="stu">关于一元二次方程你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010412552.jpg"></span>
                <span class="title">初三物理：分子热运动</span>
                <span class="details">
                <span class="stu">关于分子热运动你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/haocheng_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">郝老师 </span>
                <span class="ins-job-title">物理高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010353618.jpg"></span>
                <span class="title">初三英语：定语从句 </span>
                <span class="details">
                <span class="stu">关于定语从句你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲 </span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010338442.jpg"></span>
                <span class="title">初三数学：不等式（组）经典精讲</span>
                <span class="details">
                <span class="stu">关于不等式（组）经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/huangwei_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">黄老师</span>
                <span class="ins-job-title">重点中学数学教研组组长</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010444261.jpg"></span>
                <span class="title">初三化学：酸、碱经典精讲 </span>
                <span class="details">
                <span class="stu">关于酸、碱经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/rongshunjie_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">荣顺杰 </span>
                <span class="ins-job-title">北师大化学高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0220/20170220080638145.jpg"></span>
                <span class="title">初三数学：二次函数经典精讲</span>
                <span class="details">
                <span class="stu">关于二次函数经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/aode_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">傲德 </span>
                <span class="ins-job-title">简单学习网明星教师 </span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010403408.jpg"></span>
                <span class="title">初三英语：中考英语常考巨型总汇 </span>
                <span class="details">
                <span class="stu">关于中考英语常考巨型总汇你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/maxueling_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">麻雪玲 </span>
                <span class="ins-job-title">英语高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010421787.jpg"></span>
                <span class="title">初三物理：机械运动经典精讲</span>
                <span class="details">
                <span class="stu">关于机械运动经典精讲你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/litao_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">李涛</span>
                <span class="ins-job-title">北京市重点中学高级教师</span>
                </span>
                </span>
              </a>
            </li>
            <li class="course-box">
              <a class="mask"
                 href="/register">
                                <span class="course-thumb"><img
                                        src="http://www.jd100.com/z/uploadfile/2017/0205/20170205010430639.jpg"></span>
                <span class="title">初三化学：化学方程式</span>
                <span class="details">
                <span class="stu">关于化学方程式你都掌握好了吗？让简教练老师带你一起巩固提高吧！</span>
                </span>
                <span class="instructors">
                <img src="http://image.jiandan100.cn/data/images/teacher/rongshunjie_s.jpg" class="ins-thumb">
                <span class="r">
                <span class="ins-name">荣顺杰</span>
                <span class="ins-job-title">北师大化学高级教师</span>
               </span>
              </a>
            </li>
          </ul>
        </div>

      </div>

      <div class="textcenter button">
        <a href="/register" class="ui-button ui-button-l ui-button-blue">
          <span>免费注册预约教练></span>
        </a>
      </div>
    </div>
  </div>
</div>
</div>
<div class="jlbx_container ">
  <div class="etu_introduce_title"><h2><span>学生学习常见的四大问题,你中招了吗?</span></h2></div>
  <p class="etu_title_s">four&nbsp;common&nbsp;problems</p>
</div>
<div class="jlbx_container pb43px">
  <div class="etutor_encountered fn-clear">
    <div class="fn-left bg_gray">
      <div class="fn-left fn-clear"><img src="http://image.jiandan100.cn/images/newterm/encountered01.jpg" alt="中招一"></div>
      <div class="encountered fn-right f14px">
        <strong>学习习惯不好</strong>
        <p>不认真做题、不整理错题、不及时巩固、或在考前不会总结性回顾</p>
      </div>
    </div>
    <div class="fn-right bg_gray">
      <div class="fn-right fn-clear"><img src="http://image.jiandan100.cn/images/newterm/encountered02.jpg" alt="中招二"></div>
      <div class="encountered fn-left f14px">
        <strong>不知道跟谁学</strong>
        <p>找过一对一，没找到好老师。讲<br>解不到位，提升不明显</p>
      </div>
    </div>
  </div>
  <img src="http://image.jiandan100.cn/images/newterm/jlbx_center_circle.png" alt="中招了吗？" class="center_circle">
  <div class="fn-clear ">
    <div class="fn-left bg_gray">
      <div class="fn-left fn-clear"><img src="http://image.jiandan100.cn/images/newterm/encountered03.jpg" alt="中招三"></div>
      <div class="encountered fn-right f14px">
        <strong>自控力不强</strong>
        <p>知道该如何学习，但难以坚持，学习三分钟热度</p>
      </div>
    </div>
    <div class="fn-right bg_gray">
      <div class="fn-right fn-clear"><img src="http://image.jiandan100.cn/images/newterm/encountered04.jpg" alt="中招四"></div>
      <div class="encountered fn-left f14px">
        <strong>找不到自己的问题</strong>
        <p>上过辅导班，个性化不足，难<br>以落实</p>
      </div>
    </div>
  </div>
</div>
<div class="textcenter button">
  <a href="/register" class="ui-button ui-button-l ui-button-blue">
    <span>免费注册预约教练</span>
  </a>
</div>
<div id="floor_one" class="jlbx_container ">
  <div class="etu_introduce_title"><h2><span>教练式一对一,学生四大问题一扫而光</span></h2></div>
  <p class="etu_title_s">all-new&nbsp;learning&nbsp;mode</p>
</div>
<div class="jlbx_container zt_vedio_text textcenter">
  <a href="javascript:void(0);" title="教练伴学" id="indexVideo-toggle"><img class="about_video_start" src="http://image.jiandan100.cn/images/course/video_normal.png"><img src="http://image.jiandan100.cn/images/downcenter/etutor/jlbx_video_left.jpg"></a>
  <img class="online_trainer" src="http://image.jiandan100.cn/images/downcenter/etutor/jlbx_video_right.png" alt="教练在线" >
</div>
<div class="gray_zone">
  <div class="jlbx_container zt_etutor_introduce_con" id="floor_two">
    <div class="etu_introduce_title"><h2><span class="gray_title">四项核心服务</span></h2></div>
    <p class="etu_title_s">Core&nbsp;service</p>
  </div>
  <div class="jlbx_container etutor_introduce_two fn-clear">
    <div class="zt_two_for_first fn-left">
      <div class="half_round fn-left fn-clear">01</div>
      <div class="zt_core_service fn-right">
        <strong><span>1人1套，</span>教练"面对面"定制提升方案</strong>
        <p>教练根据每一位同学的基本学习情况，指导学生量身定制"阶段提升方案"；并且基于提升方案，在每次伴学课上进行个性化的"选课指导"，教练由北大清华等名校毕业的老师或者5年以上教学经验的优秀一线教师担任。</p>
      </div>
    </div>
    <div class="zt_two_for_first fn-right">
      <div class="half_round fn-left fn-clear">02</div>
      <div class="zt_core_service fn-right">
        <strong>听<span>权威名师</span>视频授课，获得独到方法</strong>
        <p>简单学习网汇聚全国顶级名师、中高考研究专家，精心设计课程，方法独到。</p>
      </div>
    </div>
  </div>
  <div class="jlbx_container etutor_introduce_two fn-clear">
    <div class="zt_two_for_first fn-left">
      <div class="half_round fn-left fn-clear">03</div>
      <div class="zt_core_service fn-right">
        <strong>教练"面对面"引领学生<span>全程追踪错题</span></strong>
        <p>每节课，首先进行"错题过关测"，检测以前错题是否掌握。之后，学生先独立思考、自主做新的题目、拍照提交，并判断正误；错误的题，听名师视频课，当即改错；教练，及时主动检查学生的解答、诊断问题，并通过语音+视频，"面对面"启发指导，确保消化落实。考前，错题大过关，查漏补缺。</p>
      </div>
    </div>
    <div class="zt_two_for_first fn-right">
      <div class="half_round fn-left fn-clear">04</div>
      <div class="zt_core_service fn-right">
        <strong>学生提问，教练"面对面"<span>答疑</span></strong>
        <p>针对不懂的错误，向教练提问；教练及时连线学生，通过语音+视频，"面对面"在线答疑。</p>
      </div>
    </div>
  </div>
</div>

<div class="textcenter button">
  <a href="/register" class="ui-button ui-button-l ui-button-blue">
    <span>免费注册预约教练</span>
  </a>
</div>

<div class="container etutor_introduce_con" id="floor_three">
  <div class="etu_introduce_title"><h2><span>四项配套服务</span></h2></div>
  <p class="etu_title_s">Supporting&nbsp;service</p>
</div>
<div class="container etutor_introduce_three" style="padding:0 0 50px 0;">
  <ul class="introduce_three_item fn-clear">
    <li class="fn-left" style="width: 180px">
      <img src="http://image.jiandan100.cn/images/downcenter/etutor/intro_four_one.png" alt="赠送名师视频课后课" />
      <span>赠送<br>"名师视频课后课"</span>
      <img class="item_arrow" style="left: 110px" src="http://image.jiandan100.cn/images/downcenter/etutor/arrow_s.png" alt="" />
    </li>
    <li class="fn-left" style="width: 180px">
      <img src="http://image.jiandan100.cn/images/downcenter/etutor/intro_four_two.png" alt="赠送纸质讲义" />
      <span>赠送<br>《纸质讲义》</span>
      <img class="item_arrow fn-hide" style="left: 110px" src="http://image.jiandan100.cn/images/downcenter/etutor/arrow_s.png" alt="" />
    </li>
    <li class="fn-left" style="width: 180px">
      <img src="http://image.jiandan100.cn/images/downcenter/etutor/intro_four_thr.png" alt="课后给家长微信推送《伴学报告》" />
      <span>课后给家长<br>微信推送《伴学报告》</span>
      <img class="item_arrow fn-hide" style="left: 110px" src="http://image.jiandan100.cn/images/downcenter/etutor/arrow_s.png" alt="" />
    </li>
    <li class="fn-left" style="width: 180px">
      <img src="http://image.jiandan100.cn/images/downcenter/etutor/intro_four_for.png" alt="随时退费品质保障" />
      <span>随时退费<br>品质保障</span>
      <img class="item_arrow fn-hide" style="left: 110px" src="http://image.jiandan100.cn/images/downcenter/etutor/arrow_s.png" alt="" />
    </li>
  </ul>
  <ul class="introduce_three_con">
    <li class="fn-hide">每次伴学课后，教练还会针对性推荐自主学习的名师视频课，作为必要的补充。</li>
    <li class="fn-hide">讲义包括了学生在本阶段学习需要的三个层次（同步基础课、同步提高课、满分冲刺课）的题目，供学生和教练选择适合自己的使用。讲义中的题目，均由顶级名师精心选择。</li>
    <li>每次伴学课后，家长和学生都会收到这节课的《学习报告》，包括本次课学习内容、做题及改错统计、语音答疑及指导情况。还可看到学生每一道题的解答情况，便于随时复习。</li>
    <li class="fn-hide">学生在听完第1节课后的任意一节课后，可自由选择继续学习，或者等比例退款。</li>
  </ul>
</div>
<div class="gray_zone">
  <div class="container etutor_introduce_con" id="floor_four">
    <div class="etu_introduce_title"><h2><span class="gray_title">教练伴学课的比较优势</span></h2></div>
    <p class="etu_title_s">Comparative&nbsp;advantage</p>
  </div>
  <div class="container tablestyle4 etutor_introduce_four">
    <table width="100%" height="662px">
      <thead>
      <tr class="trhead">
        <th class="no_left_border"><img src="http://image.jiandan100.cn/images/downcenter/etutor/table_head_graybgimg.png" alt="表头图片"></th>
        <th width="34%" class="tdbgpink">★&nbsp;教练伴学课&nbsp;★</th>
        <th width="28%">一对一</th>
        <th width="23%">辅导班</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td class="no_left_border">个性化</td>
        <td class="tdbgpink">很强<br><span class="f12px textleft">针对学生问题，1人1套提升方案，1人1进度，1人1难度。引领自主学习，提升学习力</span></td>
        <td>很强<br><span class="f12px textleft">针对学生问题，进行个性化教学</span></td>
        <td>几乎没有</td>
      </tr>
      <tr>
        <td class="no_left_border">师资</td>
        <td class="tdbgpink">名师+教练<br><span class="f12px textleft">全国知名中高考研究专家精心设计、讲授。教练由北大清华毕业的老师或5年以上教学经验的优秀教师担任。</span></td>
        <td>参差不齐<br><span class="f12px textleft">教案，由任课老师自己设计，限于老师个人力量，往往不够系统</span></td>
        <td>不整齐</td>
      </tr>
      <tr>
        <td class="no_left_border">追错落实</td>
        <td class="tdbgpink">全程追踪<br><span class="f12px textleft">在线教学，教练充分利用科技手段，帮助学生发现错题、当即改错、隔周检测、考前大过关，全程追踪错题，消化落实</span></td>
        <td>较难做到<br><span class="f12px textleft">老师没有电脑协助，有心而无力，很难管理和追踪错题</span></td>
        <td>更难做到</td>
      </tr>
      <tr>
        <td class="no_left_border">互动性</td>
        <td class="tdbgpink">强<br><span class="f12px textleft">学生可向老师提问，老师也会主动连线学生"面对面"指导、答疑；避免学生不思考随意提问，提升自主学习力</span></td>
        <td>很强<br><span class="f12px textleft">师生互动频率更高，能更好地把控学生学习状态。风险是，学生主动思考相对少，对老师的依赖性可能会增强，有降低学生学习力的风险</span></td>
        <td>单向讲授多<br>班级氛围浓</td>
      </tr>
      <tr>
        <td class="no_left_border">省时</td>
        <td class="tdbgpink">省去路途时间</td>
        <td>若在机构学，路途耗时多</td>
        <td>路途耗时多</td>
      </tr>
      <tr>
        <td class="no_left_border">价格</td>
        <td class="tdbgpink">40-50元/小时</td>
        <td>100-500元/小时</td>
        <td>30-100元/小时</td>
      </tr>
      <tr>
        <td class="no_left_border">适合对象</td>
        <td class="tdbgpink"><span class="f12px textleft">不仅希望提高成绩，而且希望提升学习力的同学</span></td>
        <td><span class="f12px textleft">学习非常困难，极其缺乏自学能力，也不太重视提升学习力的同学</span></td>
        <td><span class="f12px textleft">对效果期望不是很高，但希望有人"看管"或者喜欢一起学一起玩的氛围的同学</span></td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
<div class="textcenter button">
  <a href="/register" class="ui-button ui-button-l ui-button-blue">
    <span>免费注册预约教练</span>
  </a>
</div>
<div class="item-bottomTip">
  <div class="container-1000">
    <div class="bottomTip-content">
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_freeAlpha.png'|staticFile }}" alt="free">
        </dt>
        <dd class="fn-right">
          <span>免费体验</span><br>
          注册用户免费体验
        </dd>
      </dl>
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_refundAlpha.png'|staticFile }}" alt="free">
        </dt>
        <dd class="fn-right">
          <span>可退款</span><br>
          不满意可退款
        </dd>
      </dl>
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_famousAlpha.png'|staticFile }}" alt="free">
        </dt>
        <dd class="fn-right">
          <span>全名师授课</span><br>
          100%中高考命题专家
        </dd>
      </dl>
      <dl class="fn-clear">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_changeAlpha.png'|staticFile }}" alt="free">
        </dt>
        <dd class="fn-right">
          <span>可调换</span><br>
          时间不合理可以调换
        </dd>
      </dl>
    </div>
  </div>
</div>
<!-- 视频 -->
<div class="indexVideo-pop popcon2 hidden" id="J_indexVideoPop">
  <div id="clearbox" class="popclose2"><a href="javascript:box_clearDiv();"></a></div>
  <div class="popmain2">
    <h2>教练在线，伴学名师课</h2>
    <div class="popmain2_con">
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="800" height="450" id="FLVPlayer">
        <param name="movie" value="http://www.jd100.com/js/FLVPlayer_Progressive.swf" />
        <param name="salign" value="lt" />
        <param name="quality" value="high" />
        <param name="scale" value="noscale" />
        <param name="FlashVars" value="&MM_ComponentVersion=1&skinName=http://www.jd100.com/js/Clear_Skin_3&streamName=http://video.jiandan100.cn/data/flv/aboutjlbx20160729&autoPlay=true&autoRewind=false" />
        <embed src="http://www.jd100.com/js/FLVPlayer_Progressive.swf" flashvars="&MM_ComponentVersion=1&skinName=http://www.jd100.com/js/Clear_Skin_3&streamName=http://video.jiandan100.cn/data/flv/aboutjlbx20160729&autoPlay=true&autoRewind=false" quality="high" scale="noscale" width="800" height="450" name="FLVPlayer" salign="LT" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
      </object>
    </div>
  </div>
</div>

<!-- 选择地区和学校的弹出内容 -->
<div class="school_pop popcon2 fn-hide" id="j_schooldisplay">
  <div class="popmain2 school_popmain">
    <h2>选择学校<span>选择自己所在地区的学校，获得对应的课程试听</span></h2>
    <div class="popmain2_con" id="j_schoolpanel">
      <div class="school-column fn-clear">
        <h3 class="fn-left">选择省份：</h3>
        <div class="school-column-del j_provice"></div>
      </div>
      <div class="school-column fn-clear mt10">
        <h3 class="fn-left">选择城市：</h3>
        <div class="school-column-del j_city"></div>
      </div>
      <div class="school-column fn-clear mt10">
        <h3 class="fn-left">选择区/县：</h3>
        <div class="school-column-del j_subdistrict"></div>
      </div>
      <div class="school-select mt10">
        <div class="school-select-til fn-link-blue j_search"><span>在 <b>东城区</b> 的学校中搜索</span><input type="text" id="j_searchName"><a href="javascript:;" class="j_inputSchoolName">没有我的学校?</a></div>
        <div class="school-select-til fn-link-blue fn-hide j_input"><span>在 <b>东城区</b> 的学校中添加</span><input type="text" id="j_inputSchoolName"><a class="j_sure submitSchool">确定</a>  请在左侧添加学校，或者 <a href="javascript:;" class="j_chooseAgain">重新选择?</a></div>
        <div class="school-select-del fn-clear j_school"></div>
      </div>
    </div>
    <div id="school_clearbox" class="mt10 textright"><a href="javascript:box_clearDiv()" class="ui-button ui-button-s ui-button-gray">关闭</a></div>
  </div>
</div>
<input type="text" name="invent" class="hidden" id="invitecode" value="" disabled="true"/>

{% endblock %}
{% block body_js %}
<!--浮动小广告-->
<script type="text/javascript">
  $("#qr_code_ad .title a").click(function(){
    $("#qr_code_ad").remove();
    return;
  });
</script>
<script type="text/javascript">
  var provinceName = '北京';
  var districtName = '北京';
  var userType = '0';
  (function () {
    $(document).ready(function () {
      //IEPlaceholder();
    });

    $('.j_bottomTipClose').off('click').on('click',function () {//关闭底部悬浮tip
      $('.newTerm-bottomTip').addClass('fn-hide');
      $('.newTerm-footer').css('margin-bottom','0');
    });

  })();
</script>
<!-- 选择地区和学校的弹出层end -->
<script type="text/javascript" src="http://www.jd100.com/js/et.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/popwindow.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/dialog.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/cascade.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/user/utility.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/libs/underscore/underscore.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/libs/backbone/backbone.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/other/other.js"></script>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/uiComponent/schoolpop.js"></script>
<script type="text/javascript">
  $("#indexVideo-toggle").click(function() {
    add_google_tracker("/jd100.com/indexshipindianji/");
    openPopWindowEx("indexVideo-toggle", "J_indexVideoPop", "clearbox", 843, 510);
  });
  $("#recommend-video").click(function() {
    add_google_tracker("/jd100.com/indexshipindianji/");
    openPopWindowEx("recommend-video", "J_recommendVideoPop", "clearbox2",843, 510);
  });
</script>
<script type="text/javascript">
  $(document).ready(function(){
    $(".linklist_top").hover(function(){
      $(".linklist_top img").attr("src","http://image.jiandan100.cn/images/downcenter/etutor/linklist_arrow_hover.png");
    },function(){
      $(".linklist_top img").attr("src","http://image.jiandan100.cn/images/downcenter/etutor/linklist_arrow.png");
    });
    $(".about_video_start").hover(function(){
      $(".about_video_start").attr("src","http://image.jiandan100.cn/images/course/video_hover.png");
    },function(){
      $(".about_video_start").attr("src","http://image.jiandan100.cn/images/course/video_normal.png");
    });
    $(".recommend_video_start").hover(function(){
      $(".recommend_video_start").attr("src","http://image.jiandan100.cn/images/course/video_hover.png");
    },function(){
      $(".recommend_video_start").attr("src","http://image.jiandan100.cn/images/course/video_normal.png");
    });
    var $guiding=$(".bgbule");
    $guiding.hover(function(){
      $(".zt_item_arrow_up").css("display","block");
      $(".zt_introduce_guiding_con").css("display","block");
    },function(){
      $(".zt_item_arrow_up").css("display","none");
      $(".zt_introduce_guiding_con").css("display","none");
    });

    var $trtoggle=$(".tablestyle3 tr:gt(8)");
    var $item=$(".introduce_three_item li");
    $(".etu_banner01 .jlbx_container").css("height","657px");
    $(".etu_banner02 .jlbx_container").css("height","370px");
    $item.click(function(){
      var $index=$(this).index();
      $(".introduce_three_item span").removeClass("fcor_blue");
      $(".item_arrow").addClass("fn-hide");
      $(this).find("span").addClass("fcor_blue");
      $(this).find(".item_arrow").removeClass("fn-hide");
      $(".introduce_three_con li").eq($index).show().siblings().hide();
    });
    $trtoggle.hide();
    $(".arrow_btn").toggle(function(){
      $trtoggle.slideDown("fast",function(){
        $(".arrow_btn").css({backgroundPosition:"center -20px"});
      });
    },function(){
      $trtoggle.slideUp("fast",function(){
        $(".arrow_btn").css({backgroundPosition:"center 20px"});
        $(document).scrollTop(5000);
      });
    })
  });
</script>
<script type="text/javascript">
  var provinceName = '';
  var districtName = '';
  var userType = '';
  (function () {
    $('.j_navRight').css('display','none');
    $(document).ready(function () {
      //IEPlaceholder();
    });
    $('.j_register').off('click').on('click',function () {//四处注册跳转到顶部且用户名获取焦点
      $('#iuserName').focus();
    });
    $('.newTerm-linkList ul a li img').hover(function () {//右侧导航hover切换图片
      if($(this).attr('floor')){
        $(this).attr('src','http://image.jiandan100.cn/images/newterm/jlbx_linkList0'+$(this).attr('floor')+'_hover.png');
      }
    },function () {
      $(this).attr('src','http://image.jiandan100.cn/images/newterm/jlbx_linkList0'+$(this).attr('floor')+'_normal.png');
    });
    $('.j_isAgreeRule').off('click').on('click',function () {//使用协议
      if($(this).attr('isAgree')==1){
        $(this).attr('src','http://image.jiandan100.cn/images/newterm/icon_disAgreeRule.png');
        $(this).attr('isAgree','0');
        showRegisterError('请同意使用协议');
      }else{
        $(this).attr('src','http://image.jiandan100.cn/images/newterm/icon_agreeRule.png');
        $(this).attr('isAgree','1');
        $('.j_inputError').addClass('fn-hide');
      }
    });
    $('.registerSquare dl dd input').focus(function () {//注册获得焦点后提示
      if($(this).attr('name')){
        $('.tip_'+$(this).attr('name')).removeClass('fn-hide');
      }
    }).blur(function () {
      $('.tip_'+$(this).attr('name')).addClass('fn-hide');
    });
    $("#j_selectTrigger").click(function() {//点击选择学校
      $("#j_selectTrigger").blur();
      popwindow_show("j_schooldisplay", 800, 660, "", function() {new schoolView()});
    });
    $('.j_gradeBtn').off('click').on('click',function () {//点击选择年级
      $('.j_gradeSelect').removeClass('fn-hide');
    });
    $('#J_registerBtn').off('click').on('click',function () {//点击注册领取视频课
      if($('.j_isAgreeRule').attr('isAgree')==1){
        $('#id_mobilePhone').blur();
        if($('.j_inputError').hasClass('fn-hide')){
          doRegister();
        }
      }else{
        showRegisterError('请同意使用协议');
      }
    });
    $('.j_gradeBtn').Cascade({menuSeletor : '.j_gradeSelect', currentClass : 'active', hiddenInput: '#igrade'});
    $('#iuserName').blur(function () {//用户名失去焦点检测
      var errorMessage = null;
      var userName = $(this).val();
      var result = et.user.utility.checkUserName(
              userName,
              function(type, json, http) {
                try {
                  if (json.isExist) {
                    errorMessage="该用户名已存在，请换一个用户名重试";
                    showRegisterError(errorMessage);
                    return false;
                  }
                } catch (er) {
                  errorMessage="系统出现错误检测失败，请您重试";
                  showRegisterError(errorMessage);
                  return false;
                }
              }
      );
      if (result == 1) {
        $('.j_inputError').addClass('fn-hide');
        return true;
      }
      switch (result) {
        case -1:
          errorMessage = "不能少于5个字符，请您修改";
          break;
        case -2:
          errorMessage = "必须以字母开头,或您输入了非法字符";
          break;
        case -3:
          errorMessage = "不能大于20个字符，请您修改";
          break;
        case -4:
          errorMessage = "不能包含中文，请您修改";
          break;
        case -5:
          errorMessage = "不能包含空格，请您修改";
          break;
        case -6:
          errorMessage = "用户名不能为空";
          break;

      }
      showRegisterError(errorMessage);
      return false;
    });
    $('#iuserPwd').blur(function () {//密码框失去焦点检测
      var errorMessage = null;
      var password = $(this).val();
      var pattern=/(\s)+/g;
      if(pattern.test(password)){
        errorMessage = "密码中不能包含空格，请重新输入";
        showRegisterError(errorMessage);
        return false;
      }
      if (password.length == 0) {
        errorMessage = "密码不能为空";
        showRegisterError(errorMessage);
        return false;
      }
      if (password.length < 5) {
        errorMessage = "密码长度不能少于5位(5-20位)";
        showRegisterError(errorMessage);
        return false;
      }
      else if (password.length > 20) {
        errorMessage = "密码长度不能多于20位(5-20位)";
        showRegisterError(errorMessage);
        return false;
      }
      $('.j_inputError').addClass('fn-hide');
      $('#iuserName').blur();
    });
    $('#iqq').blur(function () {//QQ号失去焦点检测
      var errorMessage = null;
      var pattern = /^\d{5,11}$/;
      var qqNum = $(this).val();
      if(qqNum.length == 0){
        errorMessage="QQ号不能为空,请重新输入";
        showRegisterError(errorMessage);
        return false;
      }
      if(pattern.exec(qqNum)) {
        $('.j_inputError').addClass('fn-hide');
        checkSchool();
        return;
      }else {
        errorMessage="请输入正确的QQ号码";
        showRegisterError(errorMessage);
        return false;
      }
    });
    $('#id_mobilePhone').blur(function () {//手机号失去焦点检测
      var errorMessage = null;
      var pattern = /^1[34578]\d{9}$/;
      var phone = $(this).val();
      if(phone.length == 0){
        errorMessage="手机号为空,请重新输入";
        showRegisterError(errorMessage);
        return false;
      }
      if(pattern.exec(phone)) {
        $('.j_inputError').addClass('fn-hide');
        $('#iqq').blur();
        return;
      }else {
        errorMessage="请输入正确的手机号码";
        showRegisterError(errorMessage);
        return false;
      }
    });
    function checkSchool() {
      if($('#ischool').val().length<1){
        showRegisterError('请选择学校')
        return false;
      }else{
        checkGrade();
        return true;
      }
    }
    function checkGrade() {
      if($('#igrade').val().length<1){
        showRegisterError('请选择年级')
        return false;
      }else{
        $('#iuserPwd').blur();
        return true;
      }
    }
    function showRegisterError(message) {
      $('.j_inputError span').text(message);
      $('.j_inputError').removeClass('fn-hide');
    };
    function doRegister() {
      var pkg_json = {
        '初一' : '72',
        '初二' : '73',
        '初三' : '74',
        '六年级' : '72',
        '七年级' : '72',
        '八年级' : '73',
        '九年级' : '74',
        '高一' : '75',
        '高二' : '76',
        '高三' : '77',
        '小六' : '72'
      };
      var userName = $("#iuserName").val();
      var password = $("#iuserPwd").val();
      var figure = 0;
      var grade = $("#igrade").val();
      var teacher_grade = '';
      var subject = '';
      var inviteCode = $('#invitecode').val();
      var qq = $("#iqq").val();
      var email = "";
      var treatyCheck = '';
      var fromUrl = '';
      var forward = '';

      var realName = '';
      var mobile = $("#id_mobilePhone").val();
      var telephone = "";
      var province = et.dom.byId("iprovince").value;
      var city = et.dom.byId("idistrict").value;
      var area = et.dom.byId("isubdistrict").value;

      var school = et.dom.byId("ischool").value;
      var data = {un: userName, pwd: password, grade: grade, subject: subject, email: email, figure: figure,qq: qq, treaty: treatyCheck,ic: inviteCode,forward: forward, rurl: fromUrl, tgrade:teacher_grade,realname: realName, school:school, district: city, subdistrict: area, province: province, tel: telephone, mobile: mobile, detail:1};
      if(et.dom.byId("id_verification") != null) {
        data.code = et.dom.byId("id_verification").value;
      }

      //如果选择的是5年制 多添加一个参数gradetype=1
      data.gradetype = 0;
      if (figure == 0 && (grade == '八年级' || grade == '九年级'|| grade == '七年级' || grade == '六年级' || grade == '新六年级' )) {
        data.gradetype = 1;
      }
      et.user.utility.register(
              data,
              function (type, json, http) {
                if (type != "load") {
                  alert("网络出现问题，注册失败，请您检查网络并重试");
                  return;
                }
                if (json.success) {
                  window.location.href = etWebSiteUrl + "/m99/";
                  return;
                }
                if (json.failDesc) {
                  alert("注册失败," + json.failDesc);
                  return;
                }
                alert("系统出现问题，注册失败，请您重试");
                return;
              }
      );
    };
    function hasPlaceholderSupport() {//检测placeholder是否可用
      return 'placeholder' in document.createElement('input');
    };
    function IEPlaceholder() {//解决ie8以下placeholder不可用
      var isSupport = hasPlaceholderSupport();
      if(!isSupport) {
        $(".j_logonInputText").removeClass("fn-hide");

        $(".j_logonInput").bind("keyup keydown keypress", function(){
          if($(this).val()) {
            $(this).siblings(".j_logonInputText").addClass("fn-hide");
            return;
          }
          $(this).siblings(".j_logonInputText").removeClass("fn-hide");
        });

        $(".j_logonInputText").click(function() {
          $(this).siblings(".j_logonInput").focus();
        });

        $(".j_logonInput").on("blur", function () {
          var $self = $(this);
          if(!($self.val())) {
            $self.siblings(".j_logonInputText").removeClass("fn-hide");
          }
        });
      }
    }
  })();
</script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://www.jd100.com/js/etsrc/uiComponent/dd_belatedpng.js"></script>
<script type="text/javascript">
  DD_belatedPNG.fix('.j_belatedpng');
</script>
<![endif]-->
<script type="text/javascript">
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
  document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
  var pageTracker = _gat._getTracker("UA-2296659-1");
  pageTracker._trackPageview();
</script>
<script type="text/javascript">
  var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
  document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0a389c25bc66eea9ca7296cc9326e66a' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
  var _py = _py || [];
  _py.push(['a', '9es.6W.mlKv0CHhOxBXFrLD2Bln70']);
  _py.push(['domain','stats.ipinyou.com']);
  _py.push(['e','']);
  -function(d) {
    var s = d.createElement('script'),
            e = d.body.getElementsByTagName('script')[0]; e.parentNode.insertBefore(s, e),
            f = 'https:' == location.protocol;
    s.src = (f ? 'https' : 'http') + '://'+(f?'fm.ipinyou.com':'fm.p0y.cn')+'/j/adv.js';
  }(document);
</script>
<noscript><img src="//stats.ipinyou.com/adv.gif?a=9es.6W.mlKv0CHhOxBXFrLD2Bln70&e=" style="display:none;"/></noscript>
<script type="text/javascript">
  var pubsage_sign="";var pubsage_url="";var url=window.location.href;var domain=document.domain;var mat=url.match(/adtiid=([^&#]*)/);var iid=mat?mat[1]:"";if(iid==""||typeof(iid)=="undefined"){var uid=function(cookiekey){var strCookie=document.cookie;var arrCookie=strCookie.split(";");var value="";for(var i=0;i<arrCookie.length;i++){var arr=arrCookie[i].split("=");if(cookiekey==arr[0].replace(/(^\s*)|(\s*$)/g,"")){value=arr[1];break}}return value}("_ws_uid");if(uid==""||typeof(uid)=="undefined"){pubsage_url="tca.sagetrc.com"}else{var strAry=domain.split(".");var host=strAry[strAry.length-2]+"."+strAry[strAry.length-1];var pf=uid.split(".");if(pf[0]=="tqh"){pubsage_url="tqh_"+pubsage_sign+"."+host}if(pf[0]=="tgg"){pubsage_url="tgg_"+pubsage_sign+"."+host}if(pf[0]=="tsg"){pubsage_url="tsg_"+pubsage_sign+"."+host}if(pf[0]=="tdsp"){pubsage_url="tdsp_"+pubsage_sign+"."+host}if(pf[0]!="tsg"&&pf[0]!="tgg"&&pf[0]!="tqh"&&pf[0]!="tdsp"){pubsage_url="trc_"+pubsage_sign+"."+host}}}else{if(iid.match("^g")!=null){pubsage_url="tgg.sagetrc.com"}if(iid.match("^q")!=null){pubsage_url="tqh.sagetrc.com"}if(iid.match("^s")!=null){pubsage_url="tsg.sagetrc.com"}if(iid.match("^d")!=null){pubsage_url="tdsp.sagetrc.com"}if(iid.match("^g|^q|^s|^d")==null){pubsage_url="t1.sagetrc.com"}}var pubsage_conv_id=39119;var pubsage_conv=pubsage_conv||[];(function(){try{var d=document;var at=d.createElement("script");at.type="text/javascript";at.async=true;at.src=("https:"==document.location.protocol?"https:":"http:")+"//"+pubsage_url+"/trc/atac/conv_x.js?id="+pubsage_conv_id;var s=d.getElementsByTagName("script")[0];s.parentNode.insertBefore(at,s)}catch(e){}})();
</script>
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
{% endblock %}
