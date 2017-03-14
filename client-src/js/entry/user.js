/**
 * Created by liuchun on 2016/10/27.
 */

require('css/user.css');
require('jquery-cookie');

var $ = require('jquery');

document.onkeydown=function(event){
  var e = event || window.event || arguments.callee.caller.arguments[0];
  if(e && e.keyCode==13){ // enter 键
    $('#J_loginSubmit').click();
  }
};
var userCheck = {
  emptyCheck: function (value) { //判断是否为空，为空返回true
    if(value.length==0){
      return true;
    }else{
      return false;
    }
  },
  stateChange: function (boolean,regClass,errTip) { //注册页面改变错误提示及显示正确icon
    if(boolean){
      $(regClass+' .icon-ok').show();
      $(regClass+' .j_regError').hide();
      $(regClass+' .j_formInput').removeClass('inputError');
    }else{
      $(regClass+' .icon-ok').hide();
      $(regClass+' .j_regError').show().html(errTip);
      $(regClass+' .j_formInput').addClass('inputError');
    }
  },
  userNameCheck: function (inputID,hideID) { //登录页面判断用户名是否为空
    if(this.emptyCheck($(inputID).val())){
      $(inputID).addClass('inputError');
      $(hideID).show().html('请输入用户名/手机号/简单学习网账号');
      return false;
    }else{
      $(inputID).removeClass('inputError');
      return true;
    }
  },
  pwdEmptyCheck: function (inputID,hideID) { //登录界面判断密码是否为空
    if(this.emptyCheck($(inputID).val())){
      $(inputID).addClass('inputError');
      $(hideID).show().html('请输入密码');
      return false;
    }else{
      $(hideID).hide();
      $(inputID).removeClass('inputError');
      return true;
    }
  },
  phoneCheck: function (regClass,inputID) { //注册界面验证手机号
    var reg_mobile = /^1[34578]\d{9}$/;//手机号码正则
    var phoneNum = $(inputID).val();
    if(!this.emptyCheck(phoneNum)){
      if(reg_mobile.test(phoneNum)){
        var returnValue = false;
        $.ajax({
          type: 'GET',
          url: 'api/phone/is_register',
          data: {'phone': $('#J_phoneNum').val()},
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          async: false,
          success: function (result) {
            if(!result){
              userCheck.stateChange(true,regClass);
              returnValue = true;
            }else{
              userCheck.stateChange(false,regClass,'手机号已被注册，请直接登录');
              returnValue = false;
            }
          }
        });
        return returnValue;
      }else{
        this.stateChange(false,regClass,'请填写正确的手机号');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请填写手机号');
      return false;
    }
  },
  codeCheck: function (regClass,inputID) { //注册界面验证码验证
    var code = $(inputID).val();
    if(!this.emptyCheck(code)){
      if(code.length==6){
        var returnValue = true;
        var data = {
          'phone': $('#J_phoneNum').val(),
          'valid_code': code,
        };
        $.ajax({
          type: 'POST',
          url: 'api/sms/check_valid_code',
          data: JSON.stringify(data),
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          success: function (result) {
            if(result){
              userCheck.stateChange(true,regClass);
              returnValue = true;
            }else{
              userCheck.stateChange(false,regClass,"验证码错误,请重新输入");
              returnValue = false;
            }
          }
        });
        return returnValue;
      }else{
        this.stateChange(false,regClass,'验证码格式有误,请重新输入');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请填写验证码');
      return false;
    }
  },
  pwdCheck: function (regClass,inputID) {
    var reg_pwd = /^(?![0-9]+$)(?![a-zA-Z]+$)(?!([^(0-9a-zA-Z)]|[\(\)])+$)([^(0-9a-zA-Z)]|[\(\)]|[a-zA-Z]|[0-9]){6,20}$/;
    if(!this.emptyCheck($(inputID).val())){
      if(reg_pwd.test($(inputID).val())){
        this.stateChange(true,regClass);
        return true;
      }else{
        this.stateChange(false,regClass,'请设置6-20位密码（至少为字母、数字或符号两种及以上组合）');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请输入新密码');
      return false;
    }
  },
  selectCheck: function (regClass,inputID) {
    if(!this.emptyCheck($(inputID).val())){
      this.stateChange(true,regClass);
      return true;
    }else{
      this.stateChange(false,regClass);
      return false;
    }
  },
  realNameCheck: function (regClass,inputID) {
    var reg_realName = /[\u4E00-\u9FA5]/;
    var realName = $(inputID).val();
    if(!this.emptyCheck(realName)){
      if(reg_realName.test(realName)){
        this.stateChange(true,regClass);
        return true;
      }else{
        this.stateChange(false,regClass,'请输入汉字');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请输入姓名');
      return false;
    }
  },
  qqNumberCheck: function (regClass,inputID) {
    var reg_qq = /^\d{5,11}$/;
    var qqNumber = $(inputID).val();
    if(!this.emptyCheck(qqNumber)){
      if(reg_qq.test(qqNumber)){
        this.stateChange(true,regClass);
        return true;
      }else{
        this.stateChange(false,regClass,'QQ号格式不正确');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请输入QQ号');
      return false;
    }
  },
  regUserNameCheck: function (regClass,inputID) {
    var reg_name = /^[a-zA-Z][a-zA-Z0-9]{4,19}$/;
    var userName = $(inputID).val();
    if(!this.emptyCheck(userName)){
      if(reg_name.test(userName)){
        var returnValue = false;
        $.ajax({
          type: 'GET',
          url: 'api/user/is_register',
          data: {'user_name': $(inputID).val()},
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          async: false,
          success: function (result) {
            if(!result){
              userCheck.stateChange(true,regClass);
              returnValue = true;
            }else{
              userCheck.stateChange(false,regClass,'此用户名已经注册过,请更换用户名或直接登录');
              returnValue = false;
            }
          }
        });
        return returnValue;
      }else{
        this.stateChange(false,regClass,'请输入正确的用户名');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请输入正确的用户名');
      return false;
    }
  },
  pwdConfirmCheck: function (regClass,inputID) {
    if(!this.emptyCheck($(inputID).val())){
      if($(inputID).val()===$('#J_iuserpwd').val()){
        this.stateChange(true,regClass);
        return true;
      }else{
        this.stateChange(false,regClass,'两次输入的密码不一致');
        return false;
      }
    }else{
      this.stateChange(false,regClass,'请输入确认密码');
      return false;
    }
  }
};

(function () {
  // 注册
  function init() {
    blurCheck();
    clickBind();
    IEPlaceholder('.j_userInput','.j_userInputText');
    IEPlaceholder('.j_formInput','.j_userInputText');
    $.ajaxSetup({
      contentType: 'application/json',
      dataType: 'json'
    });
  };
  function blurCheck () { //注册页面失去焦点事件绑定
    $('#J_phoneNum').on('blur',function () {
      userCheck.phoneCheck('.j_reg_phoneNum','#J_phoneNum');
    });
    // $('#J_iusercode').on('blur',function () {
    //   userCheck.codeCheck('.j_reg_code','#J_iusercode');
    // });
    $('#J_iuserpwd').on('blur',function () {
      userCheck.pwdCheck('.j_reg_pwd','#J_iuserpwd');
    });
    $('#J_irealname').on('blur',function () {
      userCheck.realNameCheck('.j_reg_realName','#J_irealname');
    });
    $('#J_iqq').on('blur',function () {
      userCheck.qqNumberCheck('.j_reg_qq','#J_iqq');
    });
    $('#J_userName').on('blur',function () {
      userCheck.regUserNameCheck('.j_reg_userName','#J_userName');
    });
    $('#J_iuserpwdConfirm').on('blur',function () {
      userCheck.pwdConfirmCheck('.j_reg_pwdConfirm','#J_iuserpwdConfirm');
    });
  };
  function clickBind() {
    $(document).ready(function () {
      if($.cookie('getSmsCode')>0){
        second60('#J_getPhoneCode',$.cookie('getSmsCode'));
      };
    });
    $(document).on('click',function () {
      if($('.j_gradeSelect').css('display')=='block'||$('.j_midSelect').css('display')=='block'||$('.j_highSelect').css('display')=='block'){
        $('.j_gradeSelect,.j_midSelect,.j_highSelect').hide();
        userCheck.selectCheck('.j_reg_grade','#J_igrade');
        userCheck.selectCheck('.j_reg_midsystem','#J_imidsystem');
        userCheck.selectCheck('.j_reg_highsub','#J_ihighsub');
      }
    });
    toggleShow('#J_midSystemSelect','.j_midSelect');
    toggleShow('#J_highSubSelect','.j_highSelect');
    $('#J_igradeSelect').on('click',function (e) {
      $('.j_gradeSelect').toggle();
      $('.j_midSelect,.j_highSelect').hide();
      e.stopPropagation();
    });
    $('#J_getPhoneCode').on('click',function () {
      if(userCheck.phoneCheck('.j_reg_phoneNum','#J_phoneNum')){
        $.ajax({
          type: 'GET',
          url: 'api/sms/send_valid_code',
          data: {'phone': $('#J_phoneNum').val()},
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          success: function (result) {
            if(result){
              second60('#J_getPhoneCode',60);
            }
          },
          error: function (result) {
            var error = JSON.parse(result.responseText);
            userCheck.stateChange(false,'.j_reg_code',error.message);
            if(error.error.remainSeconds>0){
              $.cookie('getSmsCode',error.error.remainSeconds);
              second60('#J_getPhoneCode',error.error.remainSeconds);
            }
          }
        });
      }
    });
    $('#J_regSubmit').on('click',function () {//userCheck.codeCheck('.j_reg_code','#J_iusercode')
      if(userCheck.phoneCheck('.j_reg_phoneNum','#J_phoneNum')&userCheck.regUserNameCheck('.j_reg_userName','#J_userName')
        &userCheck.pwdConfirmCheck('.j_reg_pwdConfirm','#J_iuserpwdConfirm')&userCheck.pwdCheck('.j_reg_pwd','#J_iuserpwd')&userCheck.selectCheck('.j_reg_grade','#J_igrade')
        &userCheck.qqNumberCheck('.j_reg_qq','#J_iqq')&(userCheck.selectCheck('.j_reg_midsystem','#J_imidsystem')
        |userCheck.selectCheck('.j_reg_highsub','#J_ihighsub')|true)){
        var midHigh = $('#J_igrade').attr('midHigh');
        var data = {//'sms_code': $('#J_iusercode').val(),
          'phone': $('#J_phoneNum').val(),
          'user_name': $('#J_userName').val(),
          'password': $('#J_iuserpwd').val(),
          'qq': $('#J_iqq').val(),
          'grade': $('#J_igrade').attr('grade'),
          'grade_type': 0,
          'subject_classify': 0
        }
        if(midHigh == 0){
          data.grade_type = parseInt($('#J_imidsystem').attr('grade_type'));
        }else if(midHigh == 1){
          data.subject_classify = parseInt($('#J_ihighsub').attr('subject_classify'));
        }
        $.ajax({
          type: 'POST',
          url: 'api/user/register',
          data: JSON.stringify(data),
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          success: function (result) {
            if(result){
              window.location.href='/experience?reg=1';
            }
          },
          error: function (result) {
            var error = JSON.parse(result.responseText);
            userCheck.stateChange(false,'.j_reg_qq',error.message);
          }
        })
      }
    });
    $('.j_gradeItemSelect').on('click',function (e) {
      $('.j_gradeItemSelect').removeClass('active');
      $('.j_gradeItemsSelect').addClass('fn-hide');
      $(this).addClass('active');
      $(this).find('.j_gradeItemsSelect').removeClass('fn-hide');
      e.stopPropagation();
    });
    $('.j_gradeItemsSelect li').on('click',function () {
      $('.j_gradeSelect').hide();
      $('#J_igrade').val($(this).text()).attr('midHigh',$(this).attr('midHigh')).attr('grade',$(this).attr('alt-value'));
      $('.j_reg_grade .j_userInputText').addClass('fn-hide');
      if($(this).attr('midHigh')==0){
        $('.j_reg_midsystem').removeClass('fn-hide');
        $('.j_reg_highsub').addClass('fn-hide');
      }else if($(this).attr('midHigh')==1){
        $('.j_reg_highsub').removeClass('fn-hide');
        $('.j_reg_midsystem').addClass('fn-hide');
      }else{
        $('.j_reg_highsub').addClass('fn-hide');
        $('.j_reg_midsystem').addClass('fn-hide');
      };
      userCheck.selectCheck('.j_reg_grade','#J_igrade');
    });
    $('.j_midItemSelect').on('click',function () {
      $('.j_midSelect').hide();
      $('#J_imidsystem').val($(this).text()).attr('grade_type',$(this).attr('type'));
      $('.j_reg_midsystem .j_userInputText').addClass('fn-hide');
      $('.j_midItemSelect').removeClass('active');
      $(this).addClass('active');
      userCheck.selectCheck('.j_reg_midsystem','#J_imidsystem');
    });
    $('.j_highItemSelect').on('click',function () {
      $('.j_highSelect').hide();
      $('#J_ihighsub').val($(this).text()).attr('subject_classify',$(this).attr('type'));
      $('.j_reg_highsub .j_userInputText').addClass('fn-hide');
      $('.j_highItemSelect').removeClass('active');
      $(this).addClass('active');
      userCheck.selectCheck('.j_reg_highsub','#J_ihighsub');
    });
    // 登录
    $('#J_loginSubmit').on('click',function () {
      $('#J_loginError').hide();
      if(userCheck.userNameCheck('#J_iusername','#J_loginError')&&userCheck.pwdEmptyCheck('#J_iuserpwd','#J_loginError')){
        var data = {
          "action_type": 0,
          "identity": $('#J_iusername').val(),
          "auth_code": $('#J_iuserpwd').val(),
          "remember": $('#J_remember')[0].checked
        };
        $.ajax({
          type: 'POST',
          url: 'api/logon',
          data: JSON.stringify(data),
          headers: {'X-CSRF-TOKEN': $.cookie('_csrf_token')},
          success: function (result) {
            if(result.successful){
              if(result.isFristJoin){
                if(result.isFromHere){
                  $.cookie('isFromHere',1);
                }else{
                  $.cookie('isFromHere',0);
                }
                window.location.href='/experience';
              }else{
                if(result.isFromHere){
                  $.cookie('isFromHere',1);
                }else{
                  $.cookie('isFromHere',0);
                }
                window.location.href='/uc/';
              }
            }
          },
          error: function (result) {
            var error = JSON.parse(result.responseText);
            $('#J_loginError').show().html(error.message);
          }
        })
      }
    });
  };
  function toggleShow(buttonLabel,showLabel) {
    $(buttonLabel).on('click',function (e) {
      $(showLabel).toggle();
      e.stopPropagation();
    });
  };
  function second60(labelID,second){//获取验证码按钮60s倒计时
    var s=second;
    var label = $(labelID);
    label.attr("disabled", "disabled");
    label.addClass('register-getCode-disabled');
    label.val(s--+"秒后重新获取");
    var TimeInterval = setInterval(function () {
      label.val(s+"秒后重新获取");
      $.cookie('getSmsCode',s);
      s--;
      if(s<0){
        clearInterval(TimeInterval);
        label.val("重新获取验证码");
        label.removeClass('register-getCode-disabled');
        label.removeAttr("disabled");
      }
    }, 1000);
  };

  function hasPlaceholderSupport() {//检测placeholder是否可用
    return 'placeholder' in document.createElement('input');
  };
  function IEPlaceholder(inputID,inputTextID) {//解决ie8以下placeholder不可用
    var isSupport = hasPlaceholderSupport();
    if(!isSupport) {
      $(inputTextID).removeClass("fn-hide");

      $(inputID).bind("keyup keydown keypress", function(){
        if($(this).val()) {
          $(this).siblings(inputTextID).addClass("fn-hide");
          return;
        }
        $(this).siblings(inputTextID).removeClass("fn-hide");
      });

      $(inputTextID).click(function() {
        $(this).siblings(inputID).focus();
      });

      $(inputID).on("blur", function () {
        var $self = $(this);
        if(!($self.val())) {
          $self.siblings(inputTextID).removeClass("fn-hide");
        }
      });
    }
  };
  init();
})();
