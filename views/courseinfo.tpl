{#  页面地址：www.
创建时间：2016.12.1
创 建 者：liuchun
创建原因：简教练课程设置  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线-课程设置{% endblock %}
{% block body_content %}
<!--banner-->
<input value="1" style="display: none" id="J_naviItem">
<a class="courseinfo-banner" href="register"></a>
<!--简教练科目设置-->
<div class="courseinfo-info">
  <div class="container-1000">
    <div class="onpure homeItem-text">
      <span class="onpure-title">简教练科目设置</span>
      <span class="onpure-line"></span>
    </div>
    <div class="onpureBottom">四大主科,覆盖全国版本课程</div>
    <div class="info-content">
      <dl class="bg-course11">
        <dt>
          <em class="icon-course11"></em>
          数学
        </dt>
        <dd>
          教材版本:<br>
          初中：人教版、青岛版、苏科版、浙教版、湘教版、沪科版、北师版、华师版、冀教版、京教版、鲁教版<br>
          高中：人教A版、人教B版、北师版、苏教版、湘教版
        </dd>
        <dd>
          适用年级:<br>
          初一至高三
        </dd>
      </dl>
      <dl class="bg-course12">
        <dt>
          <em class="icon-course12"></em>
          英语
        </dt>
        <dd>
          教材版本:<br>
          初中：人教版、牛津译林版、仁爱版、外研版、冀教版、北师版、牛津深圳版、上教版、京教版、鲁教版、EEC版<br>
          高中：人教版、北师版、外研版、牛津译林版、重大版
        </dd>
        <dd>
          适用年级:<br>
          初一至高三
        </dd>
      </dl>
      <dl class="bg-course13">
        <dt>
          <em class="icon-course13"></em>
          物理
        </dt>
        <dd>
          教材版本:<br>
          初中：人教版、北师版、沪科版、沪粤版、苏科版、教科版、北京课改版、鲁科版<br>
          高中：人教版、教科版、沪科版、粤教版、鲁科版
        </dd>
        <dd>
          适用年级:<br>
          初二至高三
        </dd>
      </dl>
      <dl class="bg-course14" style="margin-right: 0">
        <dt>
          <em class="icon-course14"></em>
          化学
        </dt>
        <dd>
          教材版本:<br>
          初中：人教版、沪教版、鲁教版、粤教版、北京课改版、鲁科版<br>
          高中：人教版、苏教版、鲁科版
        </dd>
        <dd>
          适用年级:<br>
          初三至高三
        </dd>
      </dl>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--简教练教材-->
<div class="courseinfo-book">
  <div class="container-1000">
    <div class="book-title">简教练教材</div>
    <div class="onpureBottom">9年资深教研,独家出品视频教材+纸质讲义,听与练相结合,提升效果更显著</div>
    <div class="accordionWrapper" style="height: 312px;" id="J_courseInfoBook">
      <div class="courseBook-red">
        <div class="courseBook-title">同步基础教材</div>
        <div class="courseBook-content">
          <span>适用对象</span>
          课堂基础知识掌握不佳、想要夯实基础的同学；或基础较好、想要领先预习的同学。
          <span>教材特色</span>
          侧重于基本概念、基本题型的透彻分析与讲解，以及常见重难点、易错点的总结与点拨; 帮助透彻理解基本知识，掌握基本题型，为进一步深入学习夯实基础。
        </div>
      </div>
      <div class="courseBook-blue">
        <div class="courseBook-title">同步提高教材</div>
        <div class="courseBook-content">
          <span>适用对象</span>
          成绩徘徊在中游，基础知识掌握良好，但解题思路不活，方法不多，难度中上的题型得分率低的同学。
          <span>教材特色</span>
          定位于核心知识点的巩固、经典题型的分析与训练；各学科解题思路的传授与启迪；重难点、易错点的总结与辨析。
        </div>
      </div>
      <div class="courseBook-red">
        <div class="courseBook-title">满分冲刺教材</div>
        <div class="courseBook-content">
          <span>适用对象</span>
          基础非常牢固，希望向满分发起挑战的同学。
          <span>教材特色</span>
          教材中的习题在难度上有所拔高，解题思路和技巧也会更有针对性；通过对典型例题的分析与总结帮助学生拓展思维，向满分发起挑战。
        </div>
      </div>
      <div class="courseBook-blue">
        <div class="courseBook-title">基础复习教材</div>
        <div class="courseBook-content">
          <span>适用对象</span>
          刚刚进入中高考复习阶段而基础相对薄弱，需要将知识系统化梳理的学生。
          <span>教材特色</span>
          对初、高中的重难点知识进行全面地梳理，构建更为系统的知识体系；用历年中高考真题和经典题巩固知识，加强对解题技巧的训练。
        </div>
      </div>
      <div class="courseBook-red">
        <div class="courseBook-title">冲刺复习教材</div>
        <div class="courseBook-content">
          <span>适用对象</span>
          希望进一步巩固复习成果，处在备考冲刺阶段的学生。
          <span>教材特色</span>
          对难点及常考点进行强化训练，在最后一个阶段帮助学生摆正心态，树立信心；联系实际，对热点话题进行梳理和练习，给学生一个开阔的解题思维路径。
        </div>
      </div>
    </div>
  </div>
</div>
<!--简教练课时安排-->
<div class="courseinfo-period">
  <div class="container-1000">
    <div class="onpure homeItem-text">
      <span class="onpure-title">简教练课时安排</span>
      <span class="onpure-line"></span>
    </div>
    <div class="period-margin">
      <div class="period-content">
        <dl>
          <dt>
            <span>
              <b>春季课程</b><br>
              3月1日-6月30日<br>(根据各地区学校开学时间进行调整)<br>
              每周五-周日,共11个时段可选,每节课两小时,<br>
              根据个人情况同步学校学习进度,<br>考前安排复习课程
            </span>
            <em class="period-spring"></em>
          </dt>
          <dd>
            建议:<br>
            每科目每周1次课,持续15-17周
          </dd>
        </dl>
        <dl class="fn-right">
          <dt class="period-bluebg">
            <span>
              <b>暑假课程</b><br>
              7月15日-8月30日<br>(根据各地区学校开学时间进行调整)<br>
              每天5个时段可选,每节课两小时,<br>
              假期课程兼顾复习与预习
            </span>
            <em class="period-summer"></em>
          </dt>
          <dd>
            建议:<br>
            每科目每天1次课,持续15天
          </dd>
        </dl>
      </div>
      <div class="period-content">
        <dl>
          <dt class="period-bluebg">
            <span>
              <b>秋季课程</b><br>
              9月1日-12月30日<br>(根据各地区学校开学时间进行调整)<br>
              每周五-周日,共11个时段可选,每节课两小时<br>
              根据个人情况同步学校学习进度,<br>考前安排复习课程
            </span>
            <em class="period-autumn"></em>
          </dt>
          <dd>
            建议:<br>
            每科目每周1次课,持续15-17周
          </dd>
        </dl>
        <dl class="fn-right">
          <dt>
            <span>
              <b>寒假课程</b><br>
              1月15日-2月15日<br>(根据各地区学校开学时间进行调整)<br>
              每天5个时段可选,每节课两小时<br>
              假期课程兼顾复习与预习
            </span>
            <em class="period-winter"></em>
          </dt>
          <dd>
            建议:<br>
            每科目每天1次课,持续10天
          </dd>
        </dl>
      </div>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--量身定制课程 合理规划目标-->
<div class="courseinfo-levels">
  <div class="levels-select">
    <div class="container-1000">
      <div class="onpure homeItem-text">
        <span class="onpure-title">量身定制课程  合理规划目标</span>
        <span class="onpure-line"></span>
      </div>
      <div class="select-content">
        <div class="j_courseGrade">
          年级:
          <span grade="c1" num="0" class="select-active">初一</span>
          <span grade="c2" num="1">初二</span>
          <span grade="c3" num="2">初三</span>
          <span grade="g1" num="3">高一</span>
          <span grade="g2" num="4">高二</span>
          <span grade="g3" num="5">高三</span>
        </div>
        <div class="j_courseSubject">
          学科:
          <span subject="math" num="0" class="select-active">数学</span>
          <span subject="english" num="1">英语</span>
          <span style="display: none;" subject="physics" num="2">物理</span>
          <span style="display: none;" subject="chemistry" num="3">化学</span>
        </div>
      </div>
    </div>
  </div>
  <div class="courselevels-fixed" id="J_courseNav">
    <div class="container-1000">
      <div class="j_courseGrade">
        年级:
        <span grade="c1" num="0" class="select-active">初一</span>
        <span grade="c2" num="1">初二</span>
        <span grade="c3" num="2">初三</span>
        <span grade="g1" num="3">高一</span>
        <span grade="g2" num="4">高二</span>
        <span grade="g3" num="5">高三</span>
      </div>
      <div class="j_courseSubject">
        <b>学科:</b>
        <span subject="math" num="0" class="select-active">数学</span>
        <span subject="english" num="1">英语</span>
        <span style="display: none;" subject="physics" num="2">物理</span>
        <span style="display: none;" subject="chemistry" num="3">化学</span>
      </div>
    </div>
  </div>
  <div class="levels-content" id="J_levelsContent">
    <div class="container-1000">
      <div class="levels-title">
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
        基础薄弱
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
      </div>
      <div class="levels-goal">
        <em></em>
        <dl>
          <dt>
            目标:
          </dt>
          <dd class="j_levelsGoal" levels="0"></dd>
        </dl>
      </div>
      <div class="levels-method">
        <em></em>
        <dl>
          <dt>学习方法:</dt>
          <dd class="j_levelsMethod" levels="0"></dd>
        </dl>
      </div>
      <img class="courselevels" src="{{ 'image/coachmode/pic_courselevels1.png'|staticFile }}" alt="line">
    </div>
  </div>
  <div class="levels-content levels-contentGray">
    <div class="container-1000">
      <div class="levels-title">
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
        成绩中等
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
      </div>
      <div class="levels-goal">
        <em></em>
        <dl>
          <dt>
            目标:
          </dt>
          <dd class="j_levelsGoal" levels="1"></dd>
        </dl>
      </div>
      <div class="levels-method">
        <em></em>
        <dl>
          <dt>学习方法:</dt>
          <dd class="j_levelsMethod" levels="1"></dd>
        </dl>
      </div>
      <img class="courselevels" src="{{ 'image/coachmode/pic_courselevels2.png'|staticFile }}" alt="line">
    </div>
  </div>
  <div class="levels-content">
    <div class="container-1000">
      <div class="levels-title">
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
        学科尖子
        <img src="{{ 'image/coachmode/icon_fourline.png'|staticFile }}" alt="line">
      </div>
      <div class="levels-goal">
        <em></em>
        <dl>
          <dt>
            目标:
          </dt>
          <dd class="j_levelsGoal" levels="2"></dd>
        </dl>
      </div>
      <div class="levels-method">
        <em></em>
        <dl>
          <dt>学习方法:</dt>
          <dd class="j_levelsMethod" levels="2"></dd>
        </dl>
      </div>
      <img class="courselevels" src="{{ 'image/coachmode/pic_courselevels3.png'|staticFile }}" alt="line">
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
<script type="text/javascript" src="{{ 'courseinfo'|packaged|staticFile }}"></script>
{% endblock %}
