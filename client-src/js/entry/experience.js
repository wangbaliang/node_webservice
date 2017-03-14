/**
 * Created by liuchun on 2017/02/27.
 */
var isLogin = false;
var lessonData = {};
var media = document.getElementById("J_expVideo");
var playedVideo = [];
var currentVideoId = -1;
var hasVideo = true;
var durationTime = 0;
var recordTime = null;
var isChangeGrade = true;
var currentGrade = 'g1';
var currentIndex = 1;
//判断是否支持h5
$.getScript("html5media/html5media.js");
if('poster' in document.createElement('video')){
  hasVideo = true;
}else{
  hasVideo = false;
}
//判断是否登录
if($('.j_videoPlayBtn').length>0){
  $('.j_videoPlayBtn').on('click',function (e) {
    $.cookie('expLessonGrade',currentGrade);
    $.cookie('expLessonIndex',currentIndex);
    window.location.href='/register';
    e.stopPropagation();
  });
}else{
  isLogin = true;
}
//页面离开时回调
window.onbeforeunload = function()
{
  sendLessonData();
};
//是否从注册页
if(window.location.href.indexOf('reg=1')>=0){
  $('#J_regWindow').css('display','block').on('click',function (e) {
    $('#J_regWindow').css('display','none');
    e.stopPropagation();
  });
}

$('#J_expSelectGrade').change(function () {   //选择年级列表
  isChangeGrade = true;
  showLesson(document.getElementById("J_expSelectGrade").value,1);
});

$('.j_expSelectVideo p').on('click',function () {    //选择视频
  clearInterval(recordTime);
  $('.j_expSelectVideo p').removeClass('experience-videoSelect');
  $(this).addClass('experience-videoSelect');
  sendLessonData();
  currentVideoId = $(this).attr('videoId');
  currentIndex = parseInt($(this).attr('num'));
  $('.j_expVideoTitle').text($(this).children('b').text());
  if(hasVideo){
    if(!isLogin){
      $('#J_expVideo').attr('src',$(this).attr('src')).attr('poster',$(this).children('img').attr('src')).removeAttr('autoplay');
    }else{
      $('#J_expVideo').attr('src',$(this).attr('src')).attr('poster',$(this).children('img').attr('src')).attr('autoplay','autoplay');
    }
  }else{
    if(!isLogin){
      $('.j_videoPlayBtn').css('background','url('+$(this).children('img').attr('src')+')');
    }
    $f('J_expVideo',{src:'html5media/flowplayer.swf',wmode: 'opaque'}, {
      clip: {
        url: $(this).attr('src'),
        autoPlay: isLogin
      },
      onPause:function () {
        clearInterval(recordTime);
      },
      onResume:function () {
        recordTime = setInterval(function () {
          durationTime++;
        },1000);
      },
      onBegin:function () {
        recordTime = setInterval(function () {
          durationTime++;
        },1000);
        if(playedVideo.indexOf(currentVideoId)<0){
          playedVideo.push(currentVideoId);
          var data = {};
          data.videoId = currentVideoId;
          $.ajax({
            type: 'POST',
            url: 'api/add/video/play_times',
            data: data,
            headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          });
        }
      },
      onFinish:function () {
        clearInterval(recordTime);
      }
    });
  }
  isChangeGrade = false;
});
//获取课程列表
(function () {
  $.ajax({
    type: 'GET',
    url: 'api/pop_videos',
    headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
    success: function (result) {
      if(result){
        contactLessonTitle(result);
        lessonData = result;
        initLessonData();
      }
    }
  });
})();

//初始化lesson数据
function initLessonData() {
  //进入页面显示年级
  if($.cookie('expLessonGrade')){
    $("#J_expSelectGrade option[value='" + $.cookie('expLessonGrade') + "']").attr("selected", true);
    showLesson($.cookie('expLessonGrade'),$.cookie('expLessonIndex'));
    $.cookie('expLessonGrade','');
    $.cookie('expLessonIndex','');
  }else if(isLogin){
    $.ajax({
      type: 'GET',
      url: 'api/my/info/base_info',
      headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
      success: function (result) {
        if(result){
          $("#J_expSelectGrade option[value='" + gradeTranslate(result.grade_code) + "']").attr("selected", true);
          showLesson(gradeTranslate(result.grade_code),1);
        }
      }
    });
  }else{
    showLesson('g1',1);
  }
}
// 发送听课数据
function sendLessonData() {
  if(durationTime>0&&currentVideoId>0){
    var data = {'videoId':currentVideoId,'startTime':new Date().Format('yyyy-MM-ddThh:mm:ss'),'playTime':durationTime};
    $.ajax({
      type: 'POST',
      url: 'api/add/video/play_history',
      data: data,
      headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
    });
    durationTime=0;
  }
}
//展示课程数据,年级,序号
function showLesson(grade,index) {
  currentGrade = grade;
  currentIndex = index;
  $('.j_expGradeText').text($('#J_expSelectGrade').find("option:selected").text()+"课程列表");
  var data = lessonData[grade];
  if(data.length>0){
    switch (data.length){
      case 1:
        $('.j_expLessonCon0').show();
        $('.j_expLessonCon1,.j_expLessonCon2,.j_expLessonCon3').hide();
        mapData(data);
        break;
      case 2:
        $('.j_expLessonCon0,.j_expLessonCon1').show();
        $('.j_expLessonCon2,.j_expLessonCon3').hide();
        mapData(data);
        break;
      case 3:
        $('.j_expLessonCon0,.j_expLessonCon1,.j_expLessonCon2').show();
        $('.j_expLessonCon3').hide();
        mapData(data);
        break;
      case 4:
        $('.j_expLessonCon0,.j_expLessonCon1,.j_expLessonCon2,.j_expLessonCon3').show();
        mapData(data);
        break;
      default:
        break;
    }
    $('.j_expSelectVideo').children('p:nth-child('+index+')').trigger('click');
  }
}
//遍历lesson数据
function mapData(data) {
  data.map(function (res,key) {
    $('.j_expLessonImg'+key).attr('src',res.imageUrl);
    $('.j_expLessonTitle'+key).text(res.title);
    $('.j_expLessonCon'+key).attr('src',res.videoUrl).attr('videoId',res.id);
    $('.j_expLessonNum'+key).text(res.hits);
  });
}
//年级转化
function gradeTranslate(grade) {
  switch (grade){
    case '02-2016':
      return 'c1';
      break;
    case '02-2015':
      return 'c2';
      break;
    case '02-2014':
      return 'c3';
      break;
    case '02-2013':
      return 'c3';
      break;
    case '03-2016':
      return 'g1';
      break;
    case '03-2015':
      return 'g2';
      break;
    case '03-2014':
      return 'g3';
      break;
    default:
      return 'g1';
      break;
  }
}
if(hasVideo){
  media.addEventListener('pause',function(){
    clearInterval(recordTime);
  },false);
  media.addEventListener('ended',function(){
    clearInterval(recordTime);
  },false);
  media.addEventListener('play',function(){
    recordTime = setInterval(function () {
      durationTime++;
    },1000);
    if(playedVideo.indexOf(currentVideoId)<0){
      playedVideo.push(currentVideoId);
      var data = {};
      data.videoId = currentVideoId;
      $.ajax({
        type: 'POST',
        url: 'api/add/video/play_times',
        data: data,
        headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
      });
    }
  },false);
}
// 课程title拼接
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
// 时间转化
Date.prototype.Format = function(fmt)
{
  var o = {
    "M+" : this.getMonth()+1,                 //月份
    "d+" : this.getDate(),                    //日
    "h+" : this.getHours(),                   //小时
    "m+" : this.getMinutes(),                 //分
    "s+" : this.getSeconds(),                 //秒
    "q+" : Math.floor((this.getMonth()+3)/3), //季度
    "S"  : this.getMilliseconds()             //毫秒
  };
  if(/(y+)/.test(fmt))
    fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
  for(var k in o)
    if(new RegExp("("+ k +")").test(fmt))
      fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
  return fmt;
}


