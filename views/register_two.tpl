{#  页面地址：www./info
    创建时间：2016.10.17
    创 建 者：liuchun
    创建原因：简教练完善信息页面  #}
{% extends 'common/login_head.tpl' %}
{% block head_title %}简教练在线-完善信息{% endblock %}
{% block body_content %}
<!--完善信息-->
<div class="square-register ">
    <div class="container-990 content-register">
        <div class="onpure regName-text">
            <span class="onpure-title">完善信息</span>
            <span class="onpure-line"></span>
        </div>
        <div class="getLesson-text">
            <span>您已获赠1次免费体验课，完善信息后即可体验</span>
        </div>
        <div class="register-area">
            <!--姓名-->
            <div class="register-info j_reg_realName">
                <label for="J_irealname">姓名</label>
                <span class="j_userInputText fn-hide">请填写学生姓名</span>
                <input class="form-input j_formInput" id="J_irealname" placeholder="请填写学生姓名">
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请输入姓名/请输入汉字
                </div>
            </div>
            <!--学校-->
            <div class="register-info reg-school">
                <label for="J_iprovince">学校</label>
                <span class="j_userInputText fn-hide">请选择学校</span>
                <input class="form-input j_formInput input-select" id="J_iprovince" placeholder="请选择学校">
                <a href="#" class="register-select"><img src="{{ 'image/tutorshow/icon_select.png'|staticFile }}" alt="select"></a>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择学校
                </div>
            </div>
            <!--入学年份-->
            <div class="register-info reg-grade">
                <label for="J_igrade">入学年份</label>
                <span class="j_userInputText fn-hide">请选择入学年份</span>
                <input class="form-input input-select j_formInput" id="J_igrade" placeholder="请选择入学年份">
                <a id="J_igradeSelect" class="register-select"><img src="{{ 'image/tutorshow/icon_select.png'|staticFile }}" alt="select"></a>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择入学年份
                </div>
                <div class="reg-gradeList j_gradeSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_gradeItemSelect active"><div class="item-wrap">初中</div>
                            <ul class="reg-gradeList-items-sub j_gradeItemsSelect">
                                <li alt-value="初三" midHigh="0">2013年初中入学</li>
                                <li alt-value="初三" midHigh="0">2014年初中入学</li>
                                <li alt-value="初二" midHigh="0">2015年初中入学</li>
                                <li alt-value="初一" midHigh="0">2016年初中入学</li>
                            </ul>
                        </li>
                        <li class="reg-gradeList-item j_gradeItemSelect"><div class="item-wrap">高中</div>
                            <ul class="reg-gradeList-items-sub j_gradeItemsSelect fn-hide">
                                <li alt-value="高三" midHigh="1">2014年高中入学</li>
                                <li alt-value="高二" midHigh="1">2015年高中入学</li>
                                <li alt-value="高一" midHigh="1">2016年高中入学</li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!--学制-->
            <div class="register-info reg-midsystem fn-hide">
                <label for="J_imidsystem">学制</label>
                <span class="j_userInputText fn-hide">请选择学制</span>
                <input class="form-input j_formInput input-select" id="J_imidsystem" placeholder="请选择学制">
                <a id="J_midSystemSelect" class="register-select"><img src="{{ 'image/tutorshow/icon_select.png'|staticFile }}" alt="select"></a>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择学制
                </div>
                <div class="reg-selectList j_midSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_midItemSelect active">六三制</li>
                        <li class="reg-gradeList-item j_midItemSelect">五四制</li>
                    </ul>
                </div>
            </div>
            <!--学科-->
            <div class="register-info reg-highsub fn-hide">
                <label for="J_ihighsub">学科</label>
                <span class="j_userInputText fn-hide">请选择学科</span>
                <input class="form-input j_formInput input-select" id="J_ihighsub" placeholder="请选择学科">
                <a id="J_highSubSelect" class="register-select"><img src="{{ 'image/tutorshow/icon_select.png'|staticFile }}" alt="select"></a>
                <i class="icon-ok"></i>
                <div class="errorTip j_regError">
                    请选择学科
                </div>
                <div class="reg-selectList j_highSelect">
                    <ul class="reg-gradeList-items">
                        <li class="reg-gradeList-item j_highItemSelect active">文科</li>
                        <li class="reg-gradeList-item j_highItemSelect">理科</li>
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
            <!--开始体验-->
            <div class="input-submit">
                <input class="btn-rose register-sm" value="开始体验" type="button">
            </div>
            <!--achieve-->
            <div class="register-imgAchieve">
                <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
            </div>
        </div>
    </div>
</div>
{% endblock %}
