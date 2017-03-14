{#  页面地址：www./download
创建时间：2016.11.25
创 建 者：liuchun
创建原因：简教练客户端下载  #}
{% extends 'common/layout.tpl' %}
{% block head_title %}简教练在线-客户端下载{% endblock %}
{% block body %}
<div class="navigation">
  <div class="container-1000">
    <a href="/" class="logo"><img src="{{ 'image/tutorshow/logo_csl.png'|staticFile }}" alt="logo"></a>
    <div class="download-navi fn-right">
      <a class="j_switchT">教练端</a>
      <a class="j_switchS clientActive">学生端</a>
      <a href="/">网站首页</a>
    </div>
  </div>
</div>
<div class="clientTeacher j_clientT">
  <div class="clientContent container-990">
    <dl>
      <dt>
        <i>简教练在线</i><span><b>PC</b>客户端</span>
      </dt>
      <div>学习变简单,上课更轻松<span>教练端</span></div>
      <a class="btn-rose" href="http://download.jd100.com/software/oneclick/ETU/ETutorTeacher/ETutorTeacherSetup1.11.11.1608.zip" target="_blank"><img src="{{ 'image/tutorshow/icon_windowsLogo.png'|staticFile }}" alt="windowsLogo">Windows版本下载</a>
      <dd>版本：V1.11.11.1608</dd>
      <dd>大小：28.6MB</dd>
      <dd>更新：2016/09/19</dd>
      <dd>系统：XP/Vista/Win7/Win8/Win8.1/Win10</dd>
    </dl>
    <div class="switchClient">
      <a href="#"><img src="{{ 'image/tutorshow/icon_littleCircleRed.png'|staticFile }}"></a>
      <a class="j_switchS"><img src="{{ 'image/tutorshow/icon_littleCircleGray.png'|staticFile }}"></a>
    </div>
  </div>
</div>
<div class="clientStudent j_clientS">
  <div class="clientContent container-990">
    <dl>
      <dt>
        <i>简教练在线</i><span><b>PC</b>客户端</span>
      </dt>
      <div>学习变简单,上课更轻松<span>学生端</span></div>
      <a class="btn-rose" href="http://download.jd100.com/software/oneclick/ETU/ETutorStudent/ETutorStudentSetup1.12.12.1612.zip" target="_blank"><img src="{{ 'image/tutorshow/icon_windowsLogo.png'|staticFile }}" alt="windowsLogo">Windows版本下载</a>
      <dd>版本：V1.12.12.1612</dd>
      <dd>大小：28.6MB</dd>
      <dd>更新：2016/12/29</dd>
      <dd>系统：XP/Vista/Win7/Win8/Win8.1/Win10</dd>
    </dl>
    <div class="switchClient">
      <a class="j_switchT"><img src="{{ 'image/tutorshow/icon_littleCircleGray.png'|staticFile }}"></a>
      <a href="#"><img src="{{ 'image/tutorshow/icon_littleCircleRed.png'|staticFile }}"></a>
    </div>
  </div>
</div>
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript">
  $('.j_switchT').on('click',function () {
    $('.j_switchT').addClass('clientActive');
    $('.j_switchS').removeClass('clientActive');
    $('.j_clientT').css('display','block');
    $('.j_clientS').css('display','none');
  });
  $('.j_switchS').on('click',function () {
    $('.j_switchS').addClass('clientActive');
    $('.j_switchT').removeClass('clientActive');
    $('.j_clientT').css('display','none');
    $('.j_clientS').css('display','block');
  });
</script>
{% endblock %}
