/**
 * Created by liuchun on 2016/10/27.
 */
var $ = require('jquery');
require('css/style.css');
require('jquery-cookie');
var hasVideo = true;
var hasBanner = true;
if('poster' in document.createElement('video')){
  hasVideo = true;
}else{
  hasVideo = false;
}
//滚动navi
$('#J_naviItems a').removeClass('navi-itemActive');
$('#J_naviItems a').eq($('#J_naviItem').val()).addClass('navi-itemActive');
if($('#J_naviItem').val()<5){
  hasBanner = true;
  $('.j_navRight').css('display','none');
}else{
  hasBanner = false;
}
window.onload = function(){
  var nav = $('#J_navigation');
  window.onscroll = function(){
    var top = document.body.scrollTop ? document.body.scrollTop : document.documentElement.scrollTop;//w3c，各ie的兼容
    if(top >=30){
      nav.addClass('nav-fixed');
      if(hasBanner){
        if( top >=350 ){
          $('.j_navRight').css('display','block');
        }else{
          $('.j_navRight').css('display','none');
        }
      }
    }else{
      nav.removeClass('nav-fixed');
    }
  }
};
$('.j_videoOpen').on('click',function () {
  if(hasVideo){
    var video = $('#J_videoWindow');
    video.attr('src',$(this).attr('src'));
    video.attr('poster',$(this).attr('poster'));
    video.attr('autoplay','autoplay');
  }else{
    $f('J_videoWindow','html5media/flowplayer.swf', {
      clip: {
        url: $(this).attr('src'),
        autoPlay: true
      }
    });
  }
  $('#J_videoPopup').css('display','block');
  $(document.body).css({
    "overflow-x":"hidden",
    "overflow-y":"hidden"
  });
});
$('#J_videoClose').on('click',function () {
  if(hasVideo){
    document.getElementById("J_videoWindow").pause();
  }else{
    $f('J_videoWindow').pause();
  }
  $('#J_videoPopup').css('display','none');
  $(document.body).css({
    "overflow-x":"auto",
    "overflow-y":"auto"
  });
});
$('.j_navRight2').hover(function () {
  $('.j_navRight2Con').removeClass('fn-hide');
},function () {
  $('.j_navRight2Con').addClass('fn-hide');
});
$('.j_navRight3').hover(function () {
  $('.j_navRight3Con').removeClass('fn-hide');
},function () {
  $('.j_navRight3Con').addClass('fn-hide');
});
// 右侧nav保护人
(function () {
  $.ajax({
    type: 'GET',
    url: 'api/protector',
    headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
    success: function (result) {
      if(result&&result.wechatCode){
        $('.j_navRight3').removeClass('fn-hide');
        $('.j_navRight3QR').attr('src',result.wechatCode);
        $('.j_navRight3Tea').text(result.realName.substring(0,1)+'老师');
        $('.j_navRight3QQ').text(result.qq);
        $('.j_navRight3Phone').text(result.phone);
      }
    }
  });
})();
