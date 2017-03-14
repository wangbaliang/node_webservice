/**
 * Created by liuchun on 2016/10/25.
 */

require('css/style.css');
require('css/unslider.css');
require('css/unslider-dots.css');

var $ = require('jquery');
require('unslider');
$('.j_bannerSlide ul li').on('click',function () {
  switch (parseInt($(this).attr('item'))){
    case 1:
      window.location.href='/register';
      break;
    case 2:
      window.location.href='/register';
      break;
    case 3:
      window.location.href='/register';
      break;
  }
});
$('.j_bannerSlide').unslider({
  speed:750,
  delay:5000,
  autoplay: true,
  arrows: false,
  activeClass: 'btn-wr-active',
  navData:['模式','口碑','承诺']
});
