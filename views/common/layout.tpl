<!DOCTYPE html>
<html>
<head lang="en">
    <meta content="text/html;charset=utf-8" http-equiv="content-type"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="{{ 'base.css'|packaged|staticFile }}"/>
    <link rel="stylesheet" type="text/css" href="{{ 'common.css'|packaged|staticFile }}"/>
    {% block head_css %}{% endblock %}
    {% block head_js %}{% endblock %}
    <title>{% block head_title %}{% endblock %}</title>
    {#  创建时间：2016.10.17
        创 建 者：liuchun
        创建原因：简教练页面模版  #}
</head>
<body>
{% block body %}{% endblock %}
<div class="nav-right j_navRight">
  <div>
    <a href="http://www17.53kf.com/webCompany.php?arg=9007868&style=2" target="_blank"><img src="{{ 'image/tutorshow/icon_rightNavi1.png'|staticFile }}" width="25px" style="padding-top: 16px" alt="navi"></a>
    <a class="j_navRight2"><img src="{{ 'image/tutorshow/icon_rightNavi2.png'|staticFile }}" width="25px" style="padding-top: 14px" alt="navi"></a>
    <a class="j_navRight3 fn-hide"><img src="{{ 'image/tutorshow/icon_rightNavi3.png'|staticFile }}" width="25px" style="padding-top: 13px" alt="navi"></a>
    <a href="#pageTop"><img src="{{ 'image/tutorshow/icon_rightNavi4.png'|staticFile }}" width="21px" style="padding-top: 12px" alt="navi"></a>
    <img class="nav-wxCode fn-hide j_navRight2Con" src="{{ 'image/tutorshow/pic_navWxCode.png'|staticFile }}" alt="wx">
    <span class="fn-hide j_navRight3Con">
      <dl class="nav-teacher">
        <dt>专属课程顾问</dt>
        <dd><img class="j_navRight3QR" src="{{ 'image/tutorshow/logo_weixin.jpg'|staticFile }}" alt="wx"></dd>
        <dd>扫码添加<b class="j_navRight3Tea">老师</b>微信</dd>
        <dd class="nav-teacherInfo">Q&nbsp;&nbsp;Q：<i class="j_navRight3QQ"></i></dd>
        <dd class="nav-teacherInfo">电话：<i class="j_navRight3Phone"></i></dd>
      </dl>
    </span>
  </div>
</div>
<div class="footer-copyRight">
    Copyright@北京简单科技有限公司 京ICP证070589号 <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备08103216号-11</a><br>
    <a class="footer-copyRightGsh" target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802022352"><img class="fn-left" src="{{ 'image/tutorshow/icon_ghs.png'|staticFile }}"/><p>京公网安备 11010802022352号</p></a>
</div>
{% block body_js_common %}
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?1c1d1b683e59d412869cfa86c1411264";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script src="es5-shim/es5-shim.min.js"></script>
<script type="text/javascript" src="{{ 'common-lib-chunk'|packaged|staticFile }}" ></script>
{% endblock %}
{% block body_js %}{% endblock %}
</body>
</html>
