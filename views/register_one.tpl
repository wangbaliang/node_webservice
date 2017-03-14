{#  页面地址：www./register
    创建时间：2016.10.17
    创 建 者：liuchun
    创建原因：简教练注册页面one  #}
{% extends 'common/login_head.tpl' %}
{% block head_title %}简教练在线-注册{% endblock %}
{% block body_content %}
<div class="container-990 header-rg fn-clear" id="pageTop">
    <a href="/" class="logo-rg fn-left"><img src="{{ 'image/tutorshow/logo_csl.png'|staticFile }}" alt="logo"></a>
    <span class="header-rg-login fn-right">已有账号，<a href="/login">立即登录</a></span>
</div>
<!--注册账号-->
<div class="square-register">
    <div class="container-990 content-register">
        <div class="onpure regName-text">
            <span class="onpure-title">注册账号</span>
            <span class="onpure-line"></span>
        </div>
        <div class="register-area">
            <!-- 阻止chrome浏览器自动填充功能 -->
            <input  type="password" style="position: absolute;left: 0;top:0;border:none;z-index: -9;">
            <!--用户名-->
            <div class="register-info j_reg_userName">
                <label for="J_userName">用户名</label>
                <span class="j_userInputText fn-hide">字母和数字的组合,且必须以字母开头</span>
                <input class="form-input j_formInput" id="J_userName" placeholder="字母和数字的组合,且必须以字母开头">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请输入正确的用户名
                </div>
            </div>
            <!--手机号-->
            <div class="register-info j_reg_phoneNum">
                <label for="J_phoneNum">手机号</label>
                <span class="j_userInputText fn-hide">请输入正确手机号，获取上课提醒</span>
                <input class="form-input j_formInput" id="J_phoneNum" placeholder="请输入正确手机号，获取上课提醒">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请输入正确手机号，获取上课提醒
                </div>
            </div>
            <!--验证码-->
            <!--<div class="register-info reg-code j_reg_code">-->
                <!--<label for="J_iusercode">验证码</label>-->
                <!--<span class="j_userInputText fn-hide">填写短信验证码</span>-->
                <!--<input class="form-input j_formInput" id="J_iusercode" placeholder="填写短信验证码">-->
                <!--<input type="button" id="J_getPhoneCode" class="btn-gray register-getCode" value="获取验证码">-->
                <!--<i class="icon-ok"></i>-->
                <!--<div class="errorTip j_regError">-->
                    <!--填写短信验证码-->
                <!--</div>-->
            <!--</div>-->
            <!--密码-->
            <div class="register-info j_reg_pwd">
                <label for="J_iuserpwd">密&nbsp;&nbsp;&nbsp;码</label>
                <span class="j_userInputText fn-hide">至少为字母、数字或符号两种及以上组合</span>
                <input class="form-input j_formInput" id="J_iuserpwd" type="password" placeholder="至少为字母、数字或符号两种及以上组合">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    至少为字母、数字或符号两种及以上组合
                </div>
            </div>
            <!--确认密码-->
            <div class="register-info j_reg_pwdConfirm">
                <label for="J_iuserpwdConfirm">确认密码</label>
                <span class="j_userInputText fn-hide">请再次输入你的密码</span>
                <input class="form-input j_formInput" id="J_iuserpwdConfirm" type="password" placeholder="请再次输入你的密码">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    两次输入的密码不一致
                </div>
            </div>
            <!--入学年份-->
            <div class="register-info j_reg_grade">
                <label for="J_igrade">入学年份</label>
                <span class="j_userInputText fn-hide">请选择入学年份</span>
                <div class="form-select-defined j_formInput" id="J_igradeSelect">
                    <input class="form-input input-select" id="J_igrade" midHigh="0" grade="03-2016" disabled placeholder="请选择入学年份">
                    <span class="arrowDown"><i class="ui-icon icon-arrow-down"></i></span>
                </div>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择入学年份
                </div>
                <div class="reg-gradeList j_gradeSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_gradeItemSelect active"><div class="item-wrap">初中</div>
                            <ul class="reg-gradeList-items-sub j_gradeItemsSelect">
                                <li alt-value="02-2013" midHigh="0">2013年初中入学</li>
                                <li alt-value="02-2014" midHigh="0">2014年初中入学</li>
                                <li alt-value="02-2015" midHigh="0">2015年初中入学</li>
                                <li alt-value="02-2016" midHigh="0">2016年初中入学</li>
                            </ul>
                        </li>
                        <li class="reg-gradeList-item j_gradeItemSelect"><div class="item-wrap">高中</div>
                            <ul class="reg-gradeList-items-sub j_gradeItemsSelect fn-hide">
                                <li alt-value="03-2014" midHigh="1">2014年高中入学</li>
                                <li alt-value="03-2015" midHigh="1">2015年高中入学</li>
                                <li alt-value="03-2016" midHigh="2">2016年高中入学</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!--学制-->
            <div class="register-info j_reg_midsystem fn-hide">
                <label for="J_imidsystem">学制</label>
                <span class="j_userInputText fn-hide">请选择学制</span>
                <div class="form-select-defined j_formInput" id="J_midSystemSelect">
                    <input class="form-input input-select" id="J_imidsystem" grade_type="0" disabled placeholder="请选择学制">
                    <span class="arrowDown"><i class="ui-icon icon-arrow-down"></i></span>
                </div>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择学制
                </div>
                <div class="reg-selectList j_midSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_midItemSelect active" type="0">六三制</li>
                        <li class="reg-gradeList-item j_midItemSelect" type="1">五四制</li>
                    </ul>
                </div>
            </div>
            <!--学科-->
            <div class="register-info j_reg_highsub fn-hide">
                <label for="J_ihighsub">学科</label>
                <span class="j_userInputText fn-hide">请选择学科</span>
                <div class="form-select-defined j_formInput" id="J_highSubSelect">
                    <input class="form-input input-select" id="J_ihighsub" subject_classify="0" disabled placeholder="请选择学科">
                    <span class="arrowDown"><i class="ui-icon icon-arrow-down"></i></span>
                </div>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择学科
                </div>
                <div class="reg-selectList j_highSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_highItemSelect active" type="2">文科</li>
                        <li class="reg-gradeList-item j_highItemSelect" type="1">理科</li>
                    </ul>
                </div>
            </div>
            <!--QQ-->
            <div class="register-info j_reg_qq">
                <label for="J_iqq">QQ</label>
                <span class="j_userInputText fn-hide">请填写QQ号</span>
                <input class="form-input j_formInput" id="J_iqq" placeholder="请填写QQ号">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请填写QQ号/QQ号格式不正确
                </div>
            </div>
            <!--注册-->
            <div class="input-submit">
                <input class="btn-rose register-sm" id="J_regSubmit" value="注册体验简教练" type="button">
            </div>
            <!--协议-->
            <div class="agreement-text fn-link-blue">
                <div>
                    <span>点击“注册”即表示您同意并遵守<a href="/agreement">简单学习网用户使用协议</a></span>
                </div>
                <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
            </div>
        </div>
    </div>
</div>
{% endblock %}

