{#  页面地址：www.
创建时间：2016.12.05
创 建 者：liuchun
创建原因：简教练名师+教练  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线-名师+教练{% endblock %}
{% block body_content %}
<!--banner-->
<input value="3" style="display: none" id="J_naviItem">
<a class="famousteacher-banner" href="register"></a>
<!--名师优势-->
<div class="famousteacher-strength1">
  <div class="container-1000">
    <div class="famousteacher-title onpure homeItem-text">
      <span class="onpure-title">名师优势</span>
      <span class="onpure-line"></span>
    </div>
    <div class="strength1-content">
      名师来源：85%来自人大附、北大附、清华附等名校<br>
      名师经验：95%十年以上一线教学经验<br>
      名师资质：中高考命题研究专家/特级教师/学科带头人/骨干教师<br>
      <img src="{{ 'image/coachmode/pic_strength.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--名师介绍-->
<div class="famousteacher-introduce1">
  <div class="container-1000">
    <div class="introduce1-title">
      名师介绍
    </div>
    <div class="accordionWrapper" style="height: 385px;" id="J_teacherIntroduce1">
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit1"><img src="{{ 'image/coachmode/pic_famousTeacherVertical1.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content">
          <img src="{{ 'image/coachmode/pic_famousTeacherBig1.png'|staticFile }}" width="247px" height="361px" alt="teacher">
          <div>
            <dl>
              <dt>
                <span>李涛</span>
                北京市重点中学高级教师
              </dt>
              <dd>
                北京市教师大赛一等奖，教师基本功大赛一等奖，北京市骨干教师。<br>
                十余年的一线教学经验，讲课风趣幽默，深入浅出
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_lt.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit1"><img src="{{ 'image/coachmode/pic_famousTeacherVertical2.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content">
          <img src="{{ 'image/coachmode/pic_famousTeacherBig2.png'|staticFile }}" width="244px" height="366px" alt="teacher">
          <div>
            <dl>
              <dt>
                <span>黄炜</span>
                北京重点中学初中部数学教研组组长
              </dt>
              <dd>
                2008年在第六届全国初中青年数学教师优秀课观摩与评选活动一等奖得主。<br>
                多篇文章发表于《中小学数学》、《现代教育报》、《北京教研》、《中国数学教育》等知名刊物。
              </dd>
            </dl>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit1"><img src="{{ 'image/coachmode/pic_famousTeacherVertical3.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content">
          <img src="{{ 'image/coachmode/pic_famousTeacherBig3.png'|staticFile }}" width="242px" height="364px" alt="teacher">
          <div>
            <dl>
              <dt>
                <span>徐建烽</span>
                首都师范大学附属中学高级教师
              </dt>
              <dd>
                兼具偶像派与实力派特点，教风诙谐幽默，屡有奇思妙想，善于从浩瀚题海中发掘基本规律及通解通法，从复杂运动中把握物理学本质，按照物理学科的几大模块，结合教材内容，为学生系统建立物理知识脉络，直击高考。
              </dd>
            </dl>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit1"><img src="{{ 'image/coachmode/pic_famousTeacherVertical4.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content">
          <img src="{{ 'image/coachmode/pic_famousTeacherBig4.png'|staticFile }}" width="277px" height="366px" alt="teacher">
          <div>
            <dl>
              <dt>
                <span>麻雪玲(Kelly)</span>
                北京市重点中学高中英语教师
              </dt>
              <dd>
                海淀区青年骨干教师，全国中小学英语教师教学技能大赛一等奖得主，<br>
                十余年一线教学经验，多年班主任工作经验，深谙教学规律和学生认知心理。口语地道，极具亲和力。致力于快乐课堂的构建和学生实战应试能力的提高，被同学亲切地称为“麻麻”。所带学生英语平均成绩130分以上。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_mxl.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg" style="margin: 0;">
        <div class="teacherIntroduce-title j_tit1"><img src="{{ 'image/coachmode/pic_famousTeacherVertical5.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content">
          <img src="{{ 'image/coachmode/pic_famousTeacherBig5.png'|staticFile }}" width="238px" height="335px" alt="teacher">
          <div>
            <dl>
              <dt>
                <span>张国</span>
                北京著名物理特级教师
              </dt>
              <dd>
                物理学科带头人、高考物理命题研究专家。<br>
                擅长一题多解和一题多变的讲课方式，有亲和力，通过一张图、一道题可以带出整个物理知识点，画出情境图，就能“看”出答案。
              </dd>
            </dl>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--教练优势-->
<div class="famousteacher-strength2">
  <div class="container-1000">
    <div class="strength2-title">
      教练优势
    </div>
    <div class="strength2-content">
      <dl>
        <dt>
          <img src="{{ 'image/coachmode/icon_famousTeacher1.png'|staticFile }}" alt="icon">
          <b>资格认证</b>
        </dt>
        <dd>
          教练100%取得《初级中学教师资格证》或《高级中学教师资格证》
        </dd>
      </dl>
      <dl>
        <dt>
          <img src="{{ 'image/coachmode/icon_famousTeacher2.png'|staticFile }}" alt="icon">
          <b>一线教学经验</b>
        </dt>
        <dd>
          全日制学校13年平均教龄,平均带过3-4届毕业班
        </dd>
      </dl>
      <dl>
        <dt>
          <img src="{{ 'image/coachmode/icon_famousTeacher3.png'|staticFile }}" alt="icon">
          <b>严格筛选</b>
        </dt>
        <dd>
          5:1的录取率,只选择真正懂学生的教练,个性化辅导,朋友般陪伴
        </dd>
      </dl>
    </div>
    <div class="teachers-btn">
      <a href="/register" class="btn-gray-white margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieveWhite.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<!--教练介绍-->
<div class="famousteacher-introduce2">
  <div class="container-1000">
    <div class="famousteacher-title onpure homeItem-text">
      <span class="onpure-title">教练介绍</span>
      <span class="onpure-line"></span>
    </div>
    <div class="accordionWrapper" style="height: 385px; margin-bottom: 76px;" id="J_teacherIntroduce2">
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit2"><img src="{{ 'image/coachmode/pic_famousTeacherVertical6.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content teacherIntroduce-bg6">
          <div class="teacherIntroduce2-left">
            <dl>
              <dt>
                <span>黄婷</span>
                数学教练
              </dt>
              <dd>
                高考数学148分，硕士毕业于北京科技大学 。大学期间兼职教授初高中数学，有5年教学工作经验；讲课认真负责，耐心细致，互动性强，注重各个知识点之间的关联，由浅入深，由易到难；注重个性化教育，教学过程中能激发学生积极性，并帮助学生建立牢固的知识框架体系。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_ht.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit2"><img src="{{ 'image/coachmode/pic_famousTeacherVertical7.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content teacherIntroduce-bg7">
          <div class="teacherIntroduce2-right">
            <dl>
              <dt>
                <span>左建龙</span>
                化学教练
              </dt>
              <dd>
                北京工业大学硕士，五年市重点高中教学经验，2015年获得市优质课件大赛一等奖。曾在某教育机构担任3年化学教研组组长。教学风格幽默风趣、寓教于乐，让学生在轻松愉快的提高学习成绩。<br>
                注重原理的分析与解读，善于培养学生思维方法。<br>
                两名学生考入北大、五名考入清华。曾帮助很多学生完成一个学期提高50分的目标。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_zjl.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit2"><img src="{{ 'image/coachmode/pic_famousTeacherVertical8.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content teacherIntroduce-bg8">
          <div class="teacherIntroduce2-right">
            <dl>
              <dt>
                <span>崔立波</span>
                物理教练
              </dt>
              <dd>
                奥赛市第一名，七年初高中物理教学经历。善于启发、引导，化繁为简，讲授知识的同时善于传授方法，不仅让你学会，还能会学。致力于通过自己对物理的理解，通过自己对物理的热情，激发学生对物理学习的兴趣，喜欢上物理世界。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_clb.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg">
        <div class="teacherIntroduce-title j_tit2"><img src="{{ 'image/coachmode/pic_famousTeacherVertical9.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content teacherIntroduce-bg9">
          <div class="teacherIntroduce2-left">
            <dl>
              <dt>
                <span>吴建松</span>
                数学教练
              </dt>
              <dd>
                毕业于清华大学自动化系，对新兴的现代教育技术及传统教育模式都有着充分的理解。注重基础，善于启发，善于总结，善于发现并解决学生在学习过程中的问题。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_wjs.mp4"></em>
          </div>
        </div>
      </div>
      <div class="teacherIntroduce-bg" style="margin: 0;">
        <div class="teacherIntroduce-title j_tit2"><img src="{{ 'image/coachmode/pic_famousTeacherVertical10.jpg'|staticFile }}" width="114px" height="385px" alt="teacher"></div>
        <div class="teacherIntroduce-content teacherIntroduce-bg10">
          <div class="teacherIntroduce2-left">
            <dl>
              <dt>
                <span>段明达</span>
                数学教练
              </dt>
              <dd>
                从教七年，具有丰富的班课及互联网在线教学经验。教授过程思路清晰，学生容易接受。讲究先传授方法，再传授知识。通过钻研历年高考真题，把握未来高考走向。能够帮助学员做到知己知彼，百战不殆。<br>
                所教授的学员在2015年高考中数学最高143分，平均134.8分。
              </dd>
            </dl>
            <em class="j_videoOpen" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_dmd.mp4"></em>
          </div>
        </div>
      </div>
    </div>
    <div class="praise-btn">
      <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
      <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
    </div>
  </div>
</div>
<div class="videoWindow" id="J_videoPopup">
  <div class="videoShow">
    <video class="videoContent" id="J_videoWindow" src="http://video.jiandan100.cn/data/video/jianjiaolian/video_teacher_ht.mp4" width="820" height="460" controls preload="auto">
    </video>
    <a id="J_videoClose"><img src="{{ 'image/tutorshow/icon_videoClose.png'|staticFile }}" alt="close"></a>
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
<script src="html5media/html5media.js"></script>
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript">
  (function($){
    $.fn.msAccordion = function(options) {
      options = $.extend({
        currentDiv:'1',
        previousDiv:'',
        vertical: false,
        defaultid:0,
        currentcounter:0,
        intervalid:0,
        autodelay:0,
        titletype:'j_tit1',
        event:"mouseenter",
        alldivs_array:new Array()
      }, options);
      $(this).addClass("accordionWrapper");
      $(this).css({overflow:"hidden"});
      var elementid = $(this).attr("id");
      var allDivs = this.children();
      if(options.autodelay>0)  {
        $("#"+ elementid +" > div").bind("mouseenter", function(){
          pause();
        });
        $("#"+ elementid +" > div").bind("mouseleave", function(){
          startPlay();
        });
      }
      //set ids
      allDivs.each(function(current) {
        var iCurrent = current;
        var sTitleID = elementid+"_msTitle_"+(iCurrent);
        var sContentID = sTitleID+"_msContent_"+(iCurrent);
        var currentDiv = allDivs[iCurrent];
        var totalChild = currentDiv.childNodes.length;
        var titleDiv = $(currentDiv).find("div.teacherIntroduce-title");
        titleDiv.attr("id", sTitleID);
        var contentDiv = $(currentDiv).find("div.teacherIntroduce-content");
        contentDiv.attr("id", sContentID);
        options.alldivs_array.push(sTitleID);
        //$("#"+sTitleID).click(function(){openMe(sTitleID);});
        $("#"+sTitleID).bind(options.event, function(){pause();openMe(sTitleID);});
      });
      //make vertical
      if(options.vertical) {makeVertical();};
      //open default
      openMe(elementid+"_msTitle_"+options.defaultid);
      if(options.autodelay>0) {startPlay();};
      //alert(allDivs.length);
      function openMe(id) {
        var sTitleID = id;
        var iCurrent = sTitleID.split("_")[sTitleID.split("_").length-1];
        options.currentcounter = iCurrent;
        var sContentID = id+"_msContent_"+iCurrent;
        if($("#"+sContentID).css("display")=="none") {
          $("div."+options.titletype).map(function () {
            $(this).css('display','inline');
          });
          $('#'+sTitleID).css('display','none');
          if(options.previousDiv!="") {
            closeMe(options.previousDiv);
          };
          if(options.vertical) {
            $("#"+sContentID).slideDown("slow");
          } else {
            $("#"+sContentID).show("slow");
          }
          options.currentDiv = sContentID;
          options.previousDiv = options.currentDiv;
        }
      }
      function closeMe(div) {
        if(options.vertical) {
          $("#"+div).slideUp("slow");
        } else {
          $("#"+div).hide("slow");
        };
      };
      function makeVertical() {
        $("#"+elementid +" > div").css({display:"block", float:"none", clear:"both"});
        $("#"+elementid +" > div > div.teacherIntroduce-title").css({display:"block", float:"none", clear:"both"});
        $("#"+elementid +" > div > div.teacherIntroduce-content").css({clear:"both"});
      };
      function startPlay() {
        options.intervalid = window.setInterval(play, options.autodelay*1000);
      };
      function play() {
        var sTitleId = options.alldivs_array[options.currentcounter];
        openMe(sTitleId);
        options.currentcounter++;
        if(options.currentcounter==options.alldivs_array.length) options.currentcounter = 0;
      };
      function pause() {
        window.clearInterval(options.intervalid);
      };
    }
  })(jQuery);
  $("#J_teacherIntroduce1").msAccordion({defaultid:0,titletype:'j_tit1'});
  $("#J_teacherIntroduce2").msAccordion({defaultid:0,titletype:'j_tit2'});
</script>
{% endblock %}
