{#  创建时间：2016.10.17
    创 建 者：liuchun
    创建原因：简教练登录注册头部模版  #}
{% extends './layout.tpl' %}
{% block head_css %}
{% block head_css_content %}{% endblock %}
{% endblock %}
{% block body %}
{% block body_content %}{% endblock %}
<div class="tip-rg-bottomImg">
    <img src="{{ 'image/tutorshow/tip_regBottom.png'|staticFile }}" alt="topRightShow">
</div>
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'user'|packaged|staticFile }}"></script>
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
{% endblock %}
