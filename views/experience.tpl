{#  页面地址：www.jianjiaolian.com/experience
创建时间：2017.02.21
创 建 者：liuchun
创建原因：体验中心  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线-体验中心{% endblock %}
{% block body_content %}
<!--banner-->
<input value="5" style="display: none" id="J_naviItem">
<a class="experience-banner"></a>
<!--视频体验-->
<div class="experience-video container-1000">
  <div class="fn-clear">
    <div class="fn-left experience-player">
      {% if gUserName %}
      {% else %}
      <a class="exp-playBtn j_videoPlayBtn"><img src="{{ 'image/tutorshow/icon_videoPlay.png'|staticFile }}" width="98px" height="84px"></a>
      {% endif %}
      <h3 class="experience-videoTitle j_expVideoTitle">【高一物理】电场中带电粒子运动的轨迹分析问题</h3>
      <video id="J_expVideo" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_index.mp4" width="752" height="418" controls preload="auto" poster="{{ 'image/tutorshow/poster_home.jpg'|staticFile }}">
      </video>
    </div>
    <div class="experience-videoList fn-right">
      <span class="videoList-title j_expGradeText">高一课程列表</span>
      <select id="J_expSelectGrade">
        <option value="c1">初一</option>
        <option value="c2">初二</option>
        <option value="c3">初三</option>
        <option selected value="g1">高一</option>
        <option value="g2">高二</option>
        <option value="g3">高三</option>
      </select>
      <div class="experience-listContent j_expSelectVideo">
        <p class="j_expLessonCon0" num="1" videoId="" src="">
          <img class="j_expLessonImg0" src="{{ 'image/experience/c1_1_001.jpg'|staticFile }}" width="200px" height="112px">
          <b class="j_expLessonTitle0">
            【化学】
          </b>
          <span><img src="{{ 'image/advert/experience/icon_playTimes.png'|staticFile }}" width="12px" height="10px"><i class="j_expLessonNum0">123</i></span>
        </p>
        <p class="j_expLessonCon1" num="2" videoId="" src="">
          <img class="j_expLessonImg1" src="{{ 'image/experience/c1_1_001.jpg'|staticFile }}" width="200px" height="112px">
          <b class="j_expLessonTitle1">
            【数学】
          </b>
          <span><img src="{{ 'image/advert/experience/icon_playTimes.png'|staticFile }}" width="12px" height="10px"><i class="j_expLessonNum1">12</i></span>
        </p>
        <p class="j_expLessonCon2" num="3" videoId="" src="">
          <img class="j_expLessonImg2" src="{{ 'image/experience/c1_1_001.jpg'|staticFile }}" width="200px" height="112px">
          <b class="j_expLessonTitle2">
            【物理】
          </b>
          <span><img src="{{ 'image/advert/experience/icon_playTimes.png'|staticFile }}" width="12px" height="10px"><i class="j_expLessonNum2">1</i></span>
        </p>
        <p class="j_expLessonCon3" num="4" videoId="" src="">
          <img class="j_expLessonImg3" src="{{ 'image/experience/c1_1_001.jpg'|staticFile }}" width="200px" height="112px">
          <b class="j_expLessonTitle3">
            【英语】
          </b>
          <span><img src="{{ 'image/advert/experience/icon_playTimes.png'|staticFile }}" width="12px" height="10px"><i class="j_expLessonNum3">1231</i></span>
        </p>
      </div>
    </div>
  </div>
</div>
<!--底部tip-->
<div class="item-bottomTip item-bottomTip-red">
  <div class="container-1000">
    <div class="bottomTip-content">
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_freeWhite.png'|staticFile }}" width="44px" alt="free">
        </dt>
        <dd class="fn-right">
          <span>免费体验</span><br>
          注册用户免费体验
        </dd>
      </dl>
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_refundWhite.png'|staticFile }}" width="44px" alt="free">
        </dt>
        <dd class="fn-right">
          <span>可退款</span><br>
          不满意可退款
        </dd>
      </dl>
      <dl class="fn-clear bottomTip-margin">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_famousWhite.png'|staticFile }}" width="44px" alt="free">
        </dt>
        <dd class="fn-right">
          <span>全名师授课</span><br>
          100%中高考命题专家
        </dd>
      </dl>
      <dl class="fn-clear">
        <dt class="fn-left">
          <img src="{{ 'image/tutorshow/tip_changeWhite.png'|staticFile }}" width="44px" alt="free">
        </dt>
        <dd class="fn-right">
          <span>可调换</span><br>
          时间不合理可以调换
        </dd>
      </dl>
    </div>
  </div>
</div>
<!--注册成功弹窗-->
<div class="videoWindow" id="J_regWindow">
  <div class="experience-regWindow">
    <img class="regWindow-jjl" src='http://image.jiandan100.cn/images/site/union/jjl/jjl.jpg' alt="weixin">
    <img class="regWindow-wxh" src="http://image.jiandan100.cn/images/site/union/jjl/wxh.jpg" alt="weixinNum">
  </div>
</div>
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript" src="{{ 'experience'|packaged|staticFile }}"></script>
{% endblock %}
