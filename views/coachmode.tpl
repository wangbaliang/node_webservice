{#  页面地址：www.
创建时间：2016.11.28
创 建 者：liuchun
创建原因：简教练教练模式  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线-教练模式{% endblock %}
{% block body_content %}
<!--banner-->
<input value="2" style="display: none" id="J_naviItem">
<a class="coachmode-banner" href="register"></a>
<!--解决四大问题-->
<div class="coachmode-question">
  <div class="container-1000">
    <div class="onpure homeItem-text">
      <span class="onpure-title">解决学生四大问题</span>
      <span class="onpure-line"></span>
    </div>
    <div class="question-content">
      <dl>
        <img src="{{ 'image/coachmode/pic_student1.png'|staticFile }}" alt="student"/>
        <dt>
          <span>学习习惯不好</span>
          不认真做题、不认真改错、不及时巩固、或在考试前不会总结性回顾
        </dt>
        <dd>
          先做题再听课，在线翻转课堂让学生在每一讲中都能收获知识；教练全程追踪，有错必纠，错题都在课上解决，考前帮助学生阶段性总结回顾，错过的知识考试中不再丢分。
        </dd>
      </dl>
      <dl>
        <img src="{{ 'image/coachmode/pic_student2.png'|staticFile }}" alt="student"/>
        <dt>
          <span style="background: #ff4c4c">自控力不强</span>
          学生知道该如何学，但难以坚持，学习三分钟热度
        </dt>
        <dd>
          每节课两小时，15节课一学季，教练时刻陪伴，防止学生发呆走神，家长也可旁听；每节课后向家长推送学习报告，时刻了解孩子学习情况；家长和教练可在威信服务号中留言交流，共同配合，助力孩子成长。
        </dd>
      </dl>
      <dl>
        <img src="{{ 'image/coachmode/pic_student3.png'|staticFile }}" alt="student"/>
        <dt>
          <span>没有好老师</span>
          找过一对一，没找到好老师。讲解不到位，提升不明显
        </dt>
        <dd>
          汇集首都顶尖名校一线教师，各个身经百战，倾囊相授独门秘籍；层层严选全国优秀教练，平均13年教龄，95%拥有5年以上毕业班经验。名师+教练，双师辅导，短期提成绩，长期提升学习力。
        </dd>
      </dl>
      <dl style="margin-right: 0">
        <img src="{{ 'image/coachmode/pic_student4.png'|staticFile }}" alt="student"/>
        <dt>
          <span style="background: #ff4c4c">课程缺乏个性化</span>
          上过辅导班，但缺乏个性化，难以消化落实。学习效率低，浪费时间
        </dt>
        <dd>
          教练式1对1，1000个学生就有1000套个性化学习方案。想补基础，可以！想冲高分，没问题！提高学习效率，孩子对学习更有兴趣。
        </dd>
      </dl>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<div class="coachmodeContentNavi" id="J_coachModeNavi">
  <div class="container-1000">
    <a num='1' class="coachNaviActive" id="J_coachModeNavi1">1对1选课</a>
    <a num='2' id="J_coachModeNavi2">学生自主练+听+改</a>
    <a num='3' id="J_coachModeNavi3">1对1答疑</a>
    <a num='4' id="J_coachModeNavi4">1对1追错</a>
    <a num='5' id="J_coachModeNavi5">自学名师课</a>
  </div>
</div>
<!--教练模式介绍-1对1选课-->
<div class="coachmode-introduce1 j_coachIntr1">
  <div class="container-1000">
    <div class="onpure homeItem-text onpure-red">
      <span class="onpure-title">课上，教练伴学名师课</span>
      <span class="onpure-line"></span>
    </div>
    <div class="introduce1-content">
      <dl>
        <dt>
          <span>1对1选课</span>
          首次课,教练为每位学员定制1套阶段提升方案。<br>
          每次课,基于提升方案,教练结合学生当下情况,"面对面"指导学生个性化选课。
        </dt>
        <dd>
          <em class="icon-coach icon-coach11"></em>
          1对1选课
        </dd>
        <img class="rightArrow" src="{{ 'image/coachmode/icon_coachRightArrow.png'|staticFile }}" alt="rightArrow"/>
        <dd>
          <em class="icon-coach icon-coach12"></em>
          一套提升方案
        </dd>
        <img class="rightArrow" src="{{ 'image/coachmode/icon_coachRightArrow.png'|staticFile }}" alt="rightArrow"/>
        <dd>
          <em class="icon-coach icon-coach13"></em>
          "面对面"辅导
        </dd>
      </dl>
    </div>
  </div>
</div>
<!--教练模式介绍-学生自主练+听+改-->
<div class="coachmode-introduce2 j_coachIntr2">
  <div class="container-1000">
    <div class="introduce2-content">
      <dl>
        <dt>
          <span>学生自主练+听+改</span>
          学生自主学习已经选好的名师课,完成练、听、改。
        </dt>
        <dd>
          <em class="icon-coach icon-coach21"></em>
          <span>
            练习
          </span>
          练习找错。在赠送的纸质《讲义》上做题,并拍照提交,发现自己的错误;
        </dd>
        <dd>
          <em class="icon-coach icon-coach22"></em>
          <span>
            听课
          </span>
          听课。听名师讲解此题,吸收名师好方法;
        </dd>
        <dd>
          <em class="icon-coach icon-coach23"></em>
          <span>
            改错
          </span>
          改错。听懂之后,自行完成改错。
        </dd>
      </dl>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--教练模式介绍-1对1答疑-->
<div class="coachmode-introduce3 j_coachIntr3">
  <div class="container-1000">
    <div class="introduce1-content">
      <dl>
        <dt>
          <span>1对1答疑</span>
          学生遇到不懂之处,在充分思考后,随时提问,教练"面对面"答疑
        </dt>
        <dd>
          <em class="icon-coach icon-coach31"></em>
          1.先思考
        </dd>
        <img class="rightArrow" src="{{ 'image/coachmode/icon_coachRightArrow.png'|staticFile }}" alt="rightArrow"/>
        <dd>
          <em class="icon-coach icon-coach32"></em>
          2.随时提问
        </dd>
        <img class="rightArrow" src="{{ 'image/coachmode/icon_coachRightArrow.png'|staticFile }}" alt="rightArrow"/>
        <dd>
          <em class="icon-coach icon-coach33"></em>
          3."面对面"答疑
        </dd>
      </dl>
    </div>
  </div>
</div>
<!--教练模式介绍-1对1追错-查测过-->
<div class="coachmode-introduce4 j_coachIntr4">
  <div class="container-1000">
    <div class="introduce2-content">
      <dl>
        <dt>
          <span>1对1追错——查、测、过</span>
          学生自主完成练、听、改后,教练查、测、过,全程追踪错题,确保学生吸收名师好方法。
        </dt>
        <dd>
          <em class="icon-coach icon-coach41"></em>
          <span>查</span>
          1.检查指导。对每一道题的解答和改错,教练都会主动检查诊断,并"面对面"启发指导,争取"对一道,会一类"。
        </dd>
        <dd>
          <em class="icon-coach icon-coach42"></em>
          <span>测</span>
          2.错题过关测。针对自己的错题,下堂课,学生首先要接受"错题过关测"。
        </dd>
        <dd>
          <em class="icon-coach icon-coach43"></em>
          <span>过</span>
          3.考前大过关。重要错题,在期中期末、中高考等大考前,还要进行"考前大过关"。
        </dd>
      </dl>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--教练模式介绍-自学名师课-->
<div class="coachmode-introduce5 j_coachIntr5">
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
<!--教练模式-表格介绍-->
<div class="coachmode-table">
  <div class="container-1000">
    <div class="onpure homeItem-text">
      <span class="onpure-title">更低的价格,更好的学习体验</span>
      <span class="onpure-line"></span>
    </div>
    <table class="coachmodeTable-content">
      <tbody>
      <tr>
        <th style="width: 132px" class="coachTableHead"></th>
        <th style="width: 290px">简教练</th>
        <th style="width: 198px">1对1</th>
        <th style="width: 162px">在线直播班</th>
        <th style="width: 214px">传统培训机构</th>
      </tr>
      <tr>
        <td>师资</td>
        <td>名师+教练,双师辅导名师:全国知名中高考研究专家教练:北大清华毕业的老师或5年以上教学经验的优秀教师</td>
        <td>教师水平与价格直接挂钩,优秀教师稀缺</td>
        <td>一位老师,且不一定是名师</td>
        <td>教师信息不公开,流动性大</td>
      </tr>
      <tr>
        <td>个性化</td>
        <td>教练式1对1,1人1难度,1人1进度</td>
        <td>以答疑为主的个性化,缺少教学体系</td>
        <td>大班形式,所有人同一难度同一进度</td>
        <td>大班形式,所有人同一难度同一进度</td>
      </tr>
      <tr>
        <td>互动性</td>
        <td>学生可随时向老师提问，老师全程关注学习进程，在关键点主动连线学生“面对面”指导、答疑；避免学生不思考随意提问，提升自主学习力</td>
        <td>遇到问题马上提问，学生主动思考相对较少，对老师依赖性强，以讲解和答疑为主，难以提升学习力</td>
        <td>课上无互动</td>
        <td>教师为保证课程进度,很少互动</td>
      </tr>
      <tr>
        <td>追错落实</td>
        <td>全程追踪，在线教学，教练充分利用信息化手段，帮助学生发现错题、当即改错、隔周检测、考前大过关，全程追踪错题，消化落实</td>
        <td>较难做到，老师没有电脑协助，有心而无力，很难管理和追踪错题</td>
        <td>人数过多,无法控制</td>
        <td>人数较多，较难做到，最多做到对课后作业的批改，但不会一一追踪纠错</td>
      </tr>
      <tr>
        <td>配套教材</td>
        <td>覆盖全国教材版本，上千讲最新名师视频+配套纸质讲义，学练结合，课下学生还可以通过课后视频课随时听反复听进行巩固</td>
        <td>无</td>
        <td>纸质讲义</td>
        <td>纸质讲义</td>
      </tr>
      <tr>
        <td>授课形式</td>
        <td>在家上课,免去路途奔波;时间冲突可调课</td>
        <td>若在机构上课,路途耗时多;若在家上课,需家长陪伴</td>
        <td>无法调课</td>
        <td>往返教育机构,费时费力;时间冲突会错过课程和进度</td>
      </tr>
      <tr>
        <td>价格</td>
        <td>50元/课时</td>
        <td>100-800元/课时</td>
        <td>50元左右/课时</td>
        <td>80元/课时</td>
      </tr>
      </tbody>
    </table>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
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
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript">
  window.onload = function(){
    var headNav = $('#J_navigation');
    var nav = $('#J_coachModeNavi');
    var navA = $('#J_coachModeNavi a');
    var coachModeNavi1 = $('#J_coachModeNavi1');
    var coachModeNavi2 = $('#J_coachModeNavi2');
    var coachModeNavi3 = $('#J_coachModeNavi3');
    var coachModeNavi4 = $('#J_coachModeNavi4');
    var coachModeNavi5 = $('#J_coachModeNavi5');
    var coachIntrArray = [$('.j_coachIntr1').offset().top-189,$('.j_coachIntr2').offset().top-189,$('.j_coachIntr3').offset().top-189,$('.j_coachIntr4').offset().top-189,$('.j_coachIntr5').offset().top-189,$('.j_coachIntr5').offset().top-189+$('.j_coachIntr5').outerHeight()];
    navA.on('click',function () {
      switch ($(this).attr('num')){
        case '1':
          $(document).scrollTop(coachIntrArray[0]);
          return;
        case '2':
          $(document).scrollTop(coachIntrArray[1]);
          return;
        case '3':
          $(document).scrollTop(coachIntrArray[2]);
          return;
        case '4':
          $(document).scrollTop(coachIntrArray[3]);
          return;
        case '5':
          $(document).scrollTop(coachIntrArray[4]);
          return;
        default:
          return;
      }
    });
    var hasBanner = true;
    if($('#J_naviItem').val()<5){
      hasBanner = true;
    }else{
      hasBanner = false;
    }
    window.onscroll = function(){
      var top = document.body.scrollTop ? document.body.scrollTop : document.documentElement.scrollTop;//w3c，各ie的兼容
      if(top >=30){
        if(hasBanner){
          if( top >=350 ){
            $('.j_navRight').css('display','block');
          }else{
            $('.j_navRight').css('display','none');
          }
        }
        headNav.addClass('nav-fixed');
      }else{
        headNav.removeClass('nav-fixed');
      };
      if(top >= coachIntrArray[0] && top < coachIntrArray[1]){
        navA.removeClass('coachNaviActive');
        coachModeNavi1.addClass('coachNaviActive');
        nav.css('display','block');
      }else if(top >= coachIntrArray[1] && top < coachIntrArray[2]){
        navA.removeClass('coachNaviActive');
        coachModeNavi2.addClass('coachNaviActive');
      }else if(top >= coachIntrArray[2] && top < coachIntrArray[3]){
        navA.removeClass('coachNaviActive');
        coachModeNavi3.addClass('coachNaviActive');
      }else if(top >= coachIntrArray[3] && top < coachIntrArray[4]){
        navA.removeClass('coachNaviActive');
        coachModeNavi4.addClass('coachNaviActive');
      }else if(top >= coachIntrArray[4] && top < (coachIntrArray[5])){
        navA.removeClass('coachNaviActive');
        coachModeNavi5.addClass('coachNaviActive');
        nav.css('display','block');
      }else{
        nav.css('display','none');
      }
    }
  };
  $('.coachmodeTable-content tr td:nth-child(1)').css('font-size','20px');
  $('.coachmodeTable-content tr td:nth-child(2)').css({'color':'#fff','background':'#ff4c4c'});
  $('.coachmodeTable-content tr:nth-child(odd)').css('background','#f5f5f5');
</script>
{% endblock %}
