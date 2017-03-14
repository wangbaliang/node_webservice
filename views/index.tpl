{#  页面地址：www.
    创建时间：2016.10.17
    创 建 者：liuchun
    创建原因：简教练首页  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线{% endblock %}
{% block body_content %}
<!--banner-->
<input value="0" style="display: none" id="J_naviItem">
<div class="j_bannerSlide">
    <ul>
        <li class="banner-bg1" item="1"></li>
        <li class="banner-bg2" item="2"></li>
        <li class="banner-bg3" item="3"></li>
    </ul>
</div>
<!--优势-->
<div class="item-goodness">
    <div class="container-1000">
        <div class="onpure homeItem-text">
            <span class="onpure-title">简教练的优势</span>
            <span class="onpure-line"></span>
        </div>
        <div class="goodness-content goodness-margin">
            <dl class="fn-clear">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_oneToOne.png'|staticFile }}" alt="oneToOne">
                </dt>
                <dd class="fn-right">
                    <span>
                        1对1的效果<br>
                        辅导班的价格
                    </span>
                    1对1选课，1对1答疑，1对1追错，<br>
                    50元/课时。
                </dd>
            </dl>
            <dl class="fn-clear fn-marginLeft110">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_fastPromote.png'|staticFile }}" alt="oneToOne">
                </dt>
                <dd class="fn-right">
                    <span>
                        短期提成绩<br>
                        长期提升学习力
                    </span>
                    新模式，个别化引导学生自主学习，<br>
                    持续稳定的学习将带给孩子成绩与<br>
                    学习力双提升。
                </dd>
            </dl>
        </div>
        <div class="goodness-content">
            <dl class="fn-clear">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_famousTeacher.png'|staticFile }}" alt="oneToOne">
                </dt>
                <dd class="fn-right">
                    <span>
                        既有名师<br>
                        又能个性化
                    </span>
                    全国名师精心制作多层次课程，教练<br>
                    定制专属学习计划。
                </dd>
            </dl>
            <dl class="fn-clear fn-marginLeft110">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_trackMisstake.png'|staticFile }}" alt="oneToOne">
                </dt>
                <dd class="fn-right">
                    <span>
                        全程追踪错题<br>
                        确保吸收名师好方法
                    </span>
                    听练结合，教练全程陪伴，保证不放<br>
                    过任何一道错题，把疑问全部在课堂<br>
                    解决。
                </dd>
            </dl>
        </div>
    </div>
</div>
<!--愿景-->
<div class="item-wish">
    <div class="container-1000">
        <div class="onpure homeItem-text onpure-gray">
            <span class="onpure-title">简教练的模式</span>
            <span class="onpure-line"></span>
        </div>
        <div class="wish-content">
            <video src="http://video.jiandan100.cn/data/video/jianjiaolian/video_index.mp4" width="820" height="460" controls preload="auto" poster="{{ 'image/tutorshow/poster_home.jpg'|staticFile }}">
            </video>
        </div>
    </div>
</div>
<!--师资-->
<div class="item-teachers">
    <div class="container-1000">
        <div class="teachers-content">
            <dl class="teachers-margin">
                <dt>
                    <span>100%</span><br>
                    中高考命题专家
                </dt>
                <dd>
                    视频课名师均为来自全国的中高考命题专家，对中高考命题规律有精准把握。
                </dd>
            </dl>
            <dl class="teachers-margin">
                <dt>
                    <span>1000+</span><br>
                    教练
                </dt>
                <dd>
                    拥有超过1000名优秀教练资源
                </dd>
            </dl>
            <dl class="teachers-margin">
                <dt>
                    <span>20%</span><br>
                    教练录取率
                </dt>
                <dd>
                    筛选机制严格，仅录取顶尖一线教师，任教前经过先进的教学教法培训
                </dd>
            </dl>
            <dl>
                <dt>
                    <span>13</span><br>
                    教龄
                </dt>
                <dd>
                    教练平均教龄13年，90%的教师有5年以上毕业班经验
                </dd>
            </dl>
        </div>
        <div class="teachers-btn">
            <a href="/register" class="btn-gray-white margin-auto">立即注册免费体验</a>
            <img src="{{ 'image/tutorshow/pic_achieveWhite.png'|staticFile }}" alt="achieve">
        </div>
    </div>
</div>
<!--口碑-->
<div class="item-praise">
    <div class="container-1000">
        <div class="onpure homeItem-text">
            <span class="onpure-title">简教练的口碑</span>
            <span class="onpure-line"></span>
        </div>
        <div class="praise-content">
            <dl class="praise-margin">
                <img src="{{ 'image/tutorshow/pic_studentsWords1.png'|staticFile }}" width="235px" alt="student">
                <dt>
                    <span>杨同学</span>
                    西安市尊德中学 初二
                </dt>
                <dd>
                    在教练伴学课上，教练会耐心地纠正我的学习错误，给一些适合我的学习建议和听课建议，通过教练伴学，我的数学成绩更稳定了，目前对于学好数学更有信心了，也促进了对其他科目的热情，相信我和教练伴学都会越来越好的！
                </dd>
            </dl>
            <dl class="praise-margin">
                <img src="{{ 'image/tutorshow/pic_studentsWords2.jpg'|staticFile }}" width="235px" alt="student">
                <dt>
                    <span>曾同学</span>
                    乐山市实验中学 初三
                </dt>
                <dd>
                    教练伴学改变了我做题不仔细、书写不工整的问题，目前电路图画的都很规范，最近一次物理考了99分。
                </dd>
            </dl>
            <dl class="praise-margin">
                <img src="{{ 'image/tutorshow/pic_studentsWords3.jpg'|staticFile }}" width="235px" alt="student">
                <dt>
                    <span>许同学</span>
                    晋中市太谷胡村实验中学 初二
                </dt>
                <dd>
                    偶然间认识了教练伴学，怀着试一试的心态我购买了教练伴学，第一次课，两个小时的时间对我来说如坐针毡，但是几次课下来后两个小时已不在话下。目前的听课流程也更加正确——提前做题，提高了我的思考能力，我会继续把这种正确的听课流程坚持下去！
                </dd>
            </dl>
            <dl>
                <img src="{{ 'image/tutorshow/pic_studentsWords4.jpg'|staticFile }}" width="235px" alt="student">
                <dt>
                    <span>冯同学</span>
                    长治市第九中学 初三
                </dt>
                <dd>
                    我的成绩相比之前提高了两倍，之前我是不爱做题的，能拖就拖，上教练伴学课之后，有不会的教练都会指导我，让我看到题不那么烦了，想要去尝试把它做出来了，学习比以前有兴趣了
                </dd>
            </dl>
        </div>
        <div class="praise-btn">
            <a href="/wordofmouth" class="praise-more">查看更多</a>
            <a href="/register" class="btn-white-gray margin-auto">立即注册免费体验</a>
            <img src="{{ 'image/tutorshow/pic_achieve.png'|staticFile }}" alt="achieve">
        </div>
    </div>
</div>
<!--承诺-->
<div class="item-promise">
    <div class="container-1000">
        <div class="onpure homeItem-text onpure-red">
            <span class="onpure-title">简教练的承诺</span>
            <span class="onpure-line"></span>
        </div>
        <div class="promise-content">
            <dl class="promise-margin">
                <img src="{{ 'image/tutorshow/tip_freeWhite.png'|staticFile }}" alt="free">
                <dt>
                    免费体验
                </dt>
                <dd>
                    注册用户可享受免费体验简教练,试听满意再付款
                </dd>
            </dl>
            <dl class="promise-margin">
                <img src="{{ 'image/tutorshow/tip_refundWhite.png'|staticFile }}" alt="free">
                <dt>
                    可退款
                </dt>
                <dd>
                    第一次课不满意，当天提出申请可全额退款；之后申请退款，按比例退还余额
                </dd>
            </dl>
            <dl class="promise-margin">
                <img src="{{ 'image/tutorshow/tip_famousWhite.png'|staticFile }}" alt="free">
                <dt>
                    全名师授课
                </dt>
                <dd>
                    伴学课主讲老师，100%中高考命题专家
                </dd>
            </dl>
            <dl>
                <img src="{{ 'image/tutorshow/tip_changeWhite.png'|staticFile }}" alt="free">
                <dt>
                    可调换
                </dt>
                <dd>
                    春秋季课程，上课前96小时可调换上课时间；寒暑假课程，上课前24小时可调换上课时间
                </dd>
            </dl>
        </div>
    </div>
</div>

<!--媒体报道
<div class="item-newsReport">
    <div class="container-1000">
        <div class="onpure homeItem-text onpure-black">
            <span class="onpure-title">媒体报道</span>
            <span class="onpure-line"></span>
        </div>
        <div class="newsReport-content">
            <div class="newsReport-margin">
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_163.jpg'|staticFile }}" alt="163"></a>
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_sohu.jpg'|staticFile }}" alt="163"></a>
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_sina.jpg'|staticFile }}" alt="163"></a>
                <a href="#"><img src="{{ 'image/tutorshow/logo_tencent.jpg'|staticFile }}" alt="163"></a>
            </div>
            <div>
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_pr.jpg'|staticFile }}" alt="163"></a>
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_bqw.jpg'|staticFile }}" alt="163"></a>
                <a class="newsReport-marginRight" href="#"><img src="{{ 'image/tutorshow/logo_ccid.jpg'|staticFile }}" alt="163"></a>
                <a href="#"><img src="{{ 'image/tutorshow/logo_news.jpg'|staticFile }}" alt="163"></a>
            </div>
        </div>
    </div>
</div>
<!--底部tip
<div class="item-bottomTip">
    <div class="container-1000">
        <div class="bottomTip-content">
            <dl class="fn-clear bottomTip-margin">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_freeAlpha.png'|staticFile }}" alt="free">
                </dt>
                <dd class="fn-right">
                    <span>免费体验</span><br>
                    注册用户免费体验
                </dd>
            </dl>
            <dl class="fn-clear bottomTip-margin">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_refundAlpha.png'|staticFile }}" alt="free">
                </dt>
                <dd class="fn-right">
                    <span>可退款</span><br>
                    不满意可退款
                </dd>
            </dl>
            <dl class="fn-clear bottomTip-margin">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_famousAlpha.png'|staticFile }}" alt="free">
                </dt>
                <dd class="fn-right">
                    <span>全名师授课</span><br>
                    100%中高考命题专家
                </dd>
            </dl>
            <dl class="fn-clear">
                <dt class="fn-left">
                    <img src="{{ 'image/tutorshow/tip_changeAlpha.png'|staticFile }}" alt="free">
                </dt>
                <dd class="fn-right">
                    <span>可调换</span><br>
                    时间不合理可以调换
                </dd>
            </dl>
        </div>
    </div>
</div>
-->
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'index'|packaged|staticFile }}"></script>
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script src="html5media/html5media.js"></script>
{% endblock %}
