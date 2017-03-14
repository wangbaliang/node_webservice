{#  页面地址：www./download
创建时间：2016.12.27
创 建 者：liuchun
创建原因：简教练落地页1  #}
{% extends 'common/layout.tpl' %}
{% block head_title %}简教练在线{% endblock %}
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

<a class="advert1-banner" href="register"></a>

<div class="advert1-lesson" id="lesson">
  <div class="container-1000">
    <div class="select-content">
      <b>选择课程,预约教练在线伴学答疑</b>
      <div class="j_courseGrade">
        <span grade="c1" num="1" class="select-active">初一</span>
        <span grade="c2" num="2">初二</span>
        <span grade="c3" num="3">初三</span>
        <span grade="g1" num="4">高一</span>
        <span grade="g2" num="5">高二</span>
        <span grade="g3" num="6">高三</span>
      </div>
    </div>
  </div>
  <div class="advert1-lessonContent">
    <div class="container-1000">
      <div class="advert1-lesson1 fn-clear">

        <div class="advert1-lessonImg j_showRegister fn-left">
          <img class="j_lessonImg0" src="{{ 'image/advert/lessoncard/1s5.png'|staticFile }}" alt="card">
          <dl>
            <dt class="j_lessonTitle0">【高一数学】解三角形-边角互化</dt>
            <dd>主讲名师：<b class="j_lessonTea0">熊丹</b></dd>
            <dd class="advert1-lessonCoach">教练：<b class="j_lessonCoach0">黄婷</b></dd><br/>
            <dd class="advert1-playNum fn-clear"><a class="j_advert1ToReg fn-left" num="0">免费试听</a><span class="fn-right"><b class="j_lessonNum0">408</b>人听过</span></dd>
          </dl>
          <div>
            <a num="0" class="btn-rose j_advert1ToReg">免费试听体验</a>
          </div>
        </div>

        <div class="advert1-lessonImg j_showRegister j_lessonCon1 fn-right">
          <img class="j_lessonImg1" src="{{ 'image/advert/lessoncard/1s1.png'|staticFile }}" alt="card">
          <dl>
            <dt class="j_lessonTitle1">【高一数学】解三角形-边角互化</dt>
            <dd>主讲名师：<b class="j_lessonTea1">熊丹</b></dd>
            <dd class="advert1-lessonCoach">教练：<b class="j_lessonCoach1">黄婷</b></dd><br/>
            <dd class="advert1-playNum fn-clear"><a class="j_advert1ToReg fn-left" num="1">免费试听</a><span class="fn-right"><b class="j_lessonNum1">408</b>人听过</span></dd>
          </dl>
          <div>
            <a num="1" class="btn-rose j_advert1ToReg">免费试听体验</a>
          </div>
        </div>

        <div class="advert1-lessonImg advert1-lessonNoCard j_lessonNoCard1 fn-right fn-hide">
          <img src="{{ 'image/experience/pic_pleaseWait.jpg'|staticFile }}" alt="card">
        </div>

      </div>

      <div class="advert1-lesson2 j_advert1Lesson2 fn-clear">

        <div class="advert1-lessonImg j_showRegister fn-left">
          <img class="j_lessonImg2" src="{{ 'image/advert/lessoncard/1s2.png'|staticFile }}" alt="card">
          <dl>
            <dt class="j_lessonTitle2">【高一数学】解三角形-边角互化</dt>
            <dd>主讲名师：<b class="j_lessonTea2">熊丹</b></dd>
            <dd class="advert1-lessonCoach">教练：<b class="j_lessonCoach2">黄婷</b></dd><br/>
            <dd class="advert1-playNum fn-clear"><a class="j_advert1ToReg fn-left" num="2">免费试听</a><span class="fn-right"><b class="j_lessonNum2">408</b>人听过</span></dd>
          </dl>
          <div>
            <a num="2" class="btn-rose j_advert1ToReg">免费试听体验</a>
          </div>
        </div>

        <div class="advert1-lessonImg j_showRegister j_lessonCon3 fn-right">
          <img class="j_lessonImg3" src="{{ 'image/advert/lessoncard/1s4.png'|staticFile }}" alt="card">
          <dl>
            <dt class="j_lessonTitle3">【高一数学】解三角形-边角互化</dt>
            <dd>主讲名师：<b class="j_lessonTea3">熊丹</b></dd>
            <dd class="advert1-lessonCoach">教练：<b class="j_lessonCoach3">黄婷</b></dd><br/>
            <dd class="advert1-playNum fn-clear"><a class="j_advert1ToReg fn-left" num="3">免费试听</a><span class="fn-right"><b class="j_lessonNum3">408</b>人听过</span></dd>
          </dl>
          <div>
            <a num="3" class="btn-rose j_advert1ToReg">免费试听体验</a>
          </div>
        </div>

        <div class="advert1-lessonImg advert1-lessonNoCard j_lessonNoCard3 fn-right fn-hide">
          <img src="{{ 'image/experience/pic_pleaseWait.jpg'|staticFile }}" alt="card">
        </div>

      </div>
      <div class="praise-btn">
        <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
        <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
      </div>
    </div>
  </div>
</div>

<div class="advert1-hard" id="question">
  <div class="praise-btn">
    <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
    <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
  </div>
</div>

<div class="advert1-question" id="strength">
  <div class="praise-btn">
    <a href="/register" class="btn-white-rose margin-auto">立即注册免费体验</a>
    <img src="{{ 'image/tutorshow/pic_achieveWhite.png'|staticFile }}" alt="achieve">
  </div>
</div>

<div id="mode">
  <div class="container-1000">
    <img class="advert2-title" src="{{ 'image/tutorshow/pic_advert1_title1.png'|staticFile }}" alt="title">
  </div>
</div>
<div class="advert1-ensure">
  <div class="container-1000">
    <em class="advert1-player j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_index.mp4"></em>
    <div class="advert1-ensureContent">
      <span>
      课上,<br>
      教练1对1选课、1对1答疑、1对1追错
    </span>
      教练指导学生制定个性化学习方案,个性化选课;学生先做题找出问题点,针对性听取名师视频课解决问题、掌握方法,改正错误;学生思考之后隋唐提问,与教练互动答疑。
    </div>
  </div>
</div>
<div class="coachmode-introduce5">
  <div class="container-1000">
    <div class="introduce5-content1">
    <span>
      课下,<br>
      按教练的指导,自学名师课
    </span>
      学生拥有三个年级,低、中、高三个难度,约600讲的"名师视频课",可在教练的指导下,选择适合自己的内容,随时听、反复听,个性化学习。
    </div>
    <div class="introduce5-content2">
      <span>家长,可全程参与</span>
      每次伴学课后1小时,家长和学生,都会收到微信《伴学报告》,包括本次课学习内容、做题及改错统计、语音答疑及指导情况。还可看到学生每一道题的解答情况,便于随时复习。
      有任何问题或要求,家长还可以给教练留言。<br>
      家长也可全程陪听,更全面了解孩子学习情况。
    </div>
  </div>
</div>

<div class="advert1-team" id="teacher">
  <div class="praise-btn">
    <a href="/register" class="btn-white-rose margin-auto">立即注册免费体验</a>
    <img src="{{ 'image/tutorshow/pic_achieveWhite.png'|staticFile }}" alt="achieve">
  </div>
</div>

<div class="advert1-chatList" id="words">
  <div class="container-1000">
    <img class="advert1-title" src="{{ 'image/tutorshow/pic_advert1_title2.png'|staticFile }}" alt="title">
    <div class="chatList-content">
      <div>
        <em><img src="{{ 'image/coachmode/pic_chatlog1.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog2.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog3.jpg'|staticFile }}" alt="achieve"></em>
      </div>
      <div>
        <em><img src="{{ 'image/coachmode/pic_chatlog4.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog5.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog6.jpg'|staticFile }}" alt="achieve"></em>
      </div>
      <div style="margin: 0;">
        <em><img src="{{ 'image/coachmode/pic_chatlog7.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog8.jpg'|staticFile }}" alt="achieve"></em>
        <em><img src="{{ 'image/coachmode/pic_chatlog9.jpg'|staticFile }}" alt="achieve"></em>
      </div>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
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

<div class="advert1-rightNavi j_rightNavi">
  <div class="advert1-naviContent">
    <img class="advert2-btnClose2 j_closeNavi" src="{{ 'image/tutorshow/btn_advert1_close2.png'|staticFile }}" alt="close">
    <a href="/register"></a>
    <a href="#question"></a>
    <a href="#strength"></a>
    <a href="#mode"></a>
    <a href="#teacher"></a>
    <a href="#words"></a>
    <a href="http://www17.53kf.com/webCompany.php?arg=9007868&style=2" target="_blank"></a>
    <a href="#top"></a>
  </div>
</div>
<div class="container-1000 j_advert1Popup">
  <div class="advert1-popupRegister">
    <div class="advert1-popupContent">
      <div>
        <input type="checkbox" id="J_notPopup">今天不再弹出
      </div>
      <img class="advert2-btnClose1 j_closePopup" src="{{ 'image/tutorshow/btn_advert1_close1.png'|staticFile }}" alt="close">
      <a class="advert1-registerPic1" href='/register'></a>
      <a class="advert1-registerPic2" target="_blank" href='http://www17.53kf.com/webCompany.php?arg=9007868&style=2'></a>
    </div>
  </div>
</div>

<div class="videoWindow" id="J_videoPopup">
  <div class="videoShow">
    <video class="videoContent" id="J_videoWindow" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_index.mp4" width="820" height="460" controls preload="auto">
    </video>
    <a id="J_videoClose"><img src="{{ 'image/tutorshow/icon_videoClose.png'|staticFile }}" alt="close"></a>
  </div>
</div>
{% endblock %}
{% block body_js %}
<script src="html5media/html5media.js"></script>
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript">
  (function () {
    $('.j_navRight').css('display','none');
    var isPopup = false;
    var lessonData = {};
    setTimeout(function () {
      $('.j_advert1Popup').css('display','block');
    },30000);

    $('.j_closeNavi').on('click',function () {
      $('.j_rightNavi').css('display','none');
    });

    $('.j_closePopup').on('click',function () {
      $('.j_advert1Popup').css('display','none');
      if(!(document.getElementById('J_notPopup').checked||isPopup)){
        isPopup = true;
        setTimeout(function () {
          $('.j_advert1Popup').css('display','block');
        },120000);
      }
    });

    $('.j_showRegister').hover(function () {
      $(this).children('div').css('display','block');
    },function () {
      $(this).children('div').css('display','none');
    });

    $('.j_advert1ToReg').on('click',function () {
      $.cookie('expLessonGrade',grade);
      $.cookie('expLessonIndex',parseInt($(this).attr('num'))+1);
      window.location.href='/register';
    });

    var gradeItem = $('.j_courseGrade span');
    var grade = 'c1';
    gradeItem.on('click',function () {
      var num = parseInt($(this).attr('num'));
      grade = $(this).attr('grade');
      gradeItem.removeClass('select-active').eq(num-1).addClass('select-active');
      levesInit(grade);
    });

    function levesInit(grade){
      var data = lessonData[grade];
      switch (data.length){
        case 1:
          $('.j_advert1Lesson2').hide();
          $('.j_lessonNoCard1').removeClass('fn-hide');
          $('.j_lessonCon1').addClass('fn-hide');
          mapData(data);
          break;
        case 2:
          $('.j_advert1Lesson2').hide();
          $('.j_lessonNoCard1').addClass('fn-hide');
          $('.j_lessonCon1').removeClass('fn-hide');
          mapData(data);
          break;
        case 3:
          $('.j_advert1Lesson2').show();
          $('.j_lessonNoCard1,.j_lessonCon3').addClass('fn-hide');
          $('.j_lessonCon1,.j_lessonNoCard3').removeClass('fn-hide');
          mapData(data);
          break;
        case 4:
          $('.j_advert1Lesson2').show();
          $('.j_lessonNoCard1,.j_lessonNoCard3').addClass('fn-hide');
          $('.j_lessonCon1,.j_lessonCon3').removeClass('fn-hide');
          mapData(data);
          break;
      }
    }

    function mapData(data) {
      data.map(function (res,key) {
        $('.j_lessonImg'+key).attr('src',res.imageUrl);
        $('.j_lessonTitle'+key).text(res.title);
        $('.j_lessonTea'+key).text(res.teacher);
        $('.j_lessonCoach'+key).text(res.coach);
        $('.j_lessonNum'+key).text(res.hits);
      });
    }

    (function () {
      $.ajax({
        type: 'GET',
        url: 'api/pop_videos',
        headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
        success: function (result) {
          if(result){
            lessonData = result;
            contactLessonTitle(lessonData);
            levesInit(grade);
          }
        }
      });
    })();

    function contactLessonTitle(data) {
      $.each(data,function (index, res) {
        res.map(function (res, index) {
          res.title='【'+checkGrade(res.grade)+checkSubject(res.subject)+'】'+res.title;
        })
      })
    }

    function checkSubject(subjectIds) {
      var retString = '';
      switch (parseInt(subjectIds)) {
        case 1:
          retString = '语文';
          break;
        case 2:
          retString = '数学';
          break;
        case 3:
          retString = '英语';
          break;
        case 4:
          retString = '物理';
          break;
        case 5:
          retString = '化学';
          break;
        case 6:
          retString = '生物';
          break;
        case 7:
          retString = '历史';
          break;
        case 8:
          retString = '地理';
          break;
        case 9:
          retString = '政治';
          break;
        case 10:
          retString = '文科综合';
          break;
        case 11:
          retString = '理科综合';
          break;
        case 12:
          retString = '科学';
          break;
        default :
          retString = '其他';
      }
      return retString;
    }
    function checkGrade(gradesIds) {
      var retString = '';
      switch (parseInt(gradesIds)) {
        case 7:
          retString = '初一';
          break;
        case 8:
          retString = '初二';
          break;
        case 9:
          retString = '初三';
          break;
        case 10:
          retString = '高一';
          break;
        case 11:
          retString = '高二';
          break;
        case 12:
          retString = '高三';
          break;
        default :
          retString = '';
      }
      return retString;
    }
  })();
</script>
{% endblock %}
