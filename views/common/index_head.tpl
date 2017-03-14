{# 创建时间：2016.10.17
创 建 者：liuchun
创建原因：简教练头部模版 #}
{% extends './layout.tpl' %}
{% block head_css %}
{% block head_css_content %}{% endblock %}
{% endblock %}
{% block body %}
<!--header-->
<div class="container-1000 header" id="pageTop">
  <div class="fn-right">
    <a><img src="{{ 'image/tutorshow/icon_phone.png'|staticFile }}">4008-156-888</a>
    <a href="http://www17.53kf.com/webCompany.php?arg=9007868&style=2" target="_blank"><img
            src="{{ 'image/tutorshow/icon_earphone.png'|staticFile }}">在线客服</a>
    <a href="/download"><img src="{{ 'image/tutorshow/icon_download.png'|staticFile }}" style="border-right: none">客户端下载</a>
  </div>
</div>
<!--导航-->
<div class="navigation" id="J_navigation">
  <div class="container-1000">
    <a href="/" class="logo"><img src="{{ 'image/tutorshow/logo_csl.png'|staticFile }}" alt="logo"></a>
    <div class="navi-item" id="J_naviItems">
      <a href="/">首页</a>
      <a href="/courseinfo">课程设置</a>
      <a href="/coachmode">教练模式</a>
      <a href="/famousteacher">名师+教练</a>
      <a href="/wordofmouth">用户口碑</a>
      <a href="/experience">体验中心</a>
    </div>
    <div class="link-login fn-right">
      {% if gUserName %}
      <a href="/uc/" class="btn-rose" style="width: 84px">个人中心</a>
      {% else %}
      <a href="/login">登录</a>
      <a href="/register" class="btn-rose">注册</a>
      {% endif %}
    </div>
  </div>
</div>
{% block body_content %}{% endblock %}
<!--底部链接-->
<div class="footer container-1000">
  <div class="footer-href">
    <div class="footer-logo">
      <img src="{{ 'image/tutorshow/logo_csl2.png'|staticFile }}" width="180px" alt="logo">
      <img class="fn-marginTop35" src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve" width="180px">
    </div>
    <div class="footer-container fn-link-gray">
      <div class="footer-content">
        <span>关于我们</span>
        <a href="/about">了解我们</a>
        <a href="/about?contact">联系我们</a>
      </div>
      <div class="footer-content">
        <span>兄弟产品</span>
        <a href="/">简教练</a>
        <a href="http://www.jd100.com">简单学习网</a>
      </div>
      <div class="footer-content">
        <span>服务与支持</span>
        <a href="/download">软件下载</a>
        <a href="http://www17.53kf.com/webCompany.php?arg=9007868&style=2" target="_blank">在线客服</a>
        <a href="/about?pay">支付方式</a>
      </div>
      <div class="footer-phone">
        <span>全国免费咨询电话</span>
        <img src="{{ 'image/tutorshow/tip_phoneNumber.png'|staticFile }}" alt="phoneNumber"><br>
        周一至周日 9:00-18:00
      </div>
      <div class="footer-weixin">
        <img src="{{ 'image/tutorshow/logo_weixin.jpg'|staticFile }}" width="108px" height="108px" alt="weixin">
        <span>教练伴学官方微信</span>
      </div>
    </div>
  </div>
</div>
{% endblock %}

