{#  页面地址：www./login
    创建时间：2016.10.17
    创 建 者：liuchun
    创建原因：简教练登录  #}
{% extends 'common/login_head.tpl' %}
{% block head_title %}简教练在线-登录{% endblock %}
{% block body_content %}
<div class="container-990 header-rg fn-clear" id="pageTop">
    <a href="/" class="logo-rg fn-left"><img src="{{ 'image/tutorshow/logo_csl.png'|staticFile }}" alt="logo"></a>
</div>
<div class="container-990 content-login fn-clear">
    <div class="loginShow fn-left">
        <dl>
            <dt>
                <b>教练式1对1</b>
                <span>全新模式，颠覆高价 仅50元/小时</span>
            </dt>
            <dd>
                <span><img src="{{ 'image/tutorshow/tip_item_diamond.png'|staticFile }}" alt="tip">教练在线，关键时点1对1指导：选课+答疑+检查+追错</span>
                <span><img src="{{ 'image/tutorshow/tip_item_diamond.png'|staticFile }}" alt="tip">学生自主学习名师视频课：练+听+改</span>
            </dd>
            <div>
                <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
            </div>
        </dl>

    </div>
    <div class="loginForm fn-right">
        <div class="login-text">
            登录伴学
        </div>
        <form class="login-area">
            <!--错误提示-->
            <div class="errorTip" id="J_loginError">
                请输入用户名/手机号/简单学习网账号
            </div>
            <!--输入用户名-->
            <div class="login-info login-username">
                <i class="icon"></i>
                <label for="J_iusername" class="fn-hide">手机号/用户名/简单学习网账号</label>
                <span class="j_userInputText fn-hide">手机号/用户名/简单学习网账号</span>
                <input class="form-input j_userInput" id="J_iusername" placeholder="手机号/用户名/简单学习网账号">
            </div>
            <!--输入密码-->
            <div class="login-info login-pwd">
                <i class="icon"></i>
                <label for="J_iuserpwd" class="fn-hide">请输入密码</label>
                <span class="j_userInputText fn-hide">请输入密码</span>
                <input class="form-input j_userInput" id="J_iuserpwd" type="password" placeholder="请输入密码">
            </div>
            <!--登录-->
            <div class="input-submit">
                <input class="btn-rose login-sm" id="J_loginSubmit" value="登录" type="button">
            </div>
            <!--自动登录-->
            <div class="fn-clear">
                <div class="fn-left">
                    <input id="J_remember" type="checkbox" checked name="remember" tabindex="3">
                    <label class="fn-color-999" for="J_remember">下次自动登录</label>
                </div>
                <div class="fn-color-999 fn-link-rose fn-right">
                    没有账号？<a href="register">立即注册</a>
                </div>
            </div>
        </form>
    </div>
</div>
{% endblock %}
