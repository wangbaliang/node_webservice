{#  页面地址：www.
创建时间：2016.10.17
创 建 者：liuchun
创建原因：关于我们  #}
{% extends 'common/index_head.tpl' %}
{% block head_title %}简教练在线-关于我们{% endblock %}
{% block body_content %}
<!--关于我们-->
<div class="bg-gray">
  <div class="container-1000 fn-clear">
    <!--左侧导航-->
    <div class="aboutList fn-left">
      <a class="aboutListActive j_aboutList" item="Us">关于我们</a>
      <a class="j_aboutList" item="Team">团队介绍</a>
      <a class="j_aboutList" item="Culture">企业文化</a>
      <a class="j_aboutList" item="Honor">企业荣誉</a>
      <a class="j_aboutList j_aboutContact" item="Tell">联系我们</a>
      <a class="j_aboutList j_aboutPay" item="Pay">支付方式</a>
    </div>
    <!--关于我们-->
    <div class="aboutContent fn-right j_about j_aboutUs" style="display: block">
      <div class="aboutTitle">关于我们</div>
      <dl class="aboutItem">
        <dt><em></em>简教练在线是什么?</dt>
        <dd>一家专注于初高中阶段学生教育的在线辅导学校(北京简单科技有限公司所有)，采用全新的教练1v1辅导模式。</dd>
        <dt><em></em>什么是教练式1v1?</dt>
        <dd>教练通过在线视频1对1指导学生制定学习计划，学生通过名师视频课自主听、练、改，关键节点教练1对1追错、答疑。</dd>
        <dt><em></em>为什么做简教练在线?</dt>
        <dd>简教练通过十年在在线教育探索积累，希望通过独创模式帮助中学生学会自主学习，提高学习效率，感受学习乐趣，实现人生理想。</dd>
        <dt><em></em>简教练在线有客户端吗？</dt>
        <dd>点击下载<a>简教练在线客户端</a>，快来体验吧!</dd>
      </dl>
    </div>
    <!--团队介绍-->
    <div class="aboutContent-ourTeam fn-right j_about j_aboutTeam">
      <div class="ac-ourTeam ac-ourTeam1 j_aboutOurTeam">
        <p>
          <b>我们的团队</b>
          <span>OUR TEAM</span>
        </p>
      </div>
      <div class="ac-ourTeam fn-clear">
        <div class="ac-ourTeamText fn-left" style="background: #ffb54a">
          <p>
            <b>爱心</b>
            <span>LOVE</span>
          </p>
        </div>
        <div class="ac-ourTeam2 fn-right j_aboutOurTeam">
          <p></p>
        </div>
      </div>
      <div class="ac-ourTeam fn-clear">
        <div class="ac-ourTeam3 fn-left j_aboutOurTeam">
          <p></p>
        </div>
        <div class="ac-ourTeamText fn-right" style="background: #fa5050">
          <p>
            <b>积极</b>
            <span>POSITIVE</span>
          </p>
        </div>
      </div>
      <div class="ac-ourTeam ac-ourTeam4 j_aboutOurTeam">
        <p>
          <b>团队建设</b>
          <span>TEAM BUILDING</span>
        </p>
      </div>
      <div class="ac-ourTeam fn-clear">
        <div class="ac-ourTeamText fn-left" style="background: #14a7ed">
          <p>
            <b>简单</b>
            <span>SIMPLENESS</span>
          </p>
        </div>
        <div class="ac-ourTeam5 fn-right j_aboutOurTeam">
          <p></p>
        </div>
      </div>
      <div class="ac-ourTeam fn-clear">
        <div class="ac-ourTeam6 fn-left j_aboutOurTeam">
          <p></p>
        </div>
        <div class="ac-ourTeamText fn-right" style="background: #17c141">
          <p>
            <b>极致</b>
            <span>PERFECTION</span>
          </p>
        </div>
      </div>
    </div>
    <!--企业文化-->
    <div class="aboutContent fn-right j_about j_aboutCulture">
      <div class="aboutTitle">企业文化</div>
      <dl class="aboutItem">
        <dt><em></em>教育理念</dt>
        <dd>激发学生主动思考的乐趣，持续提升学习力，<br>
          不断开发自身潜能，帮助学生开启积极幸福的人生。
        </dd>
        <dt><em></em>公司使命</dt>
        <dd>学习变简单，教育更公平</dd>
        <dt><em></em>公司愿景</dt>
        <dd>做最好的网络教育，成为中国最具影响力的教育品牌</dd>
        <dt><em></em>价值观</dt>
        <dd>爱心、积极、简单、极致</dd>
        <dt><em></em>校 训</dt>
        <dd>千难万阻简单应对，人生必定不简单</dd>
      </dl>
    </div>
    <!--企业荣誉-->
    <div class="aboutContent fn-right j_about j_aboutHonor">
      <div class="aboutTitle">企业荣誉</div>
      <dl class="aboutItem-honor">
        <dt><img src="{{ 'image/tutorshow/icon_circle.png'|staticFile }}" alt="icon">2013年</dt>
        <dd>北京简单科技有限公司获评国家高新技术企业</dd>
        <dt><img src="{{ 'image/tutorshow/icon_circle.png'|staticFile }}" alt="icon">2012年</dt>
        <dd>北京简单科技有限公司获评中关村高新技术企业</dd>
        <dt><img src="{{ 'image/tutorshow/icon_circle.png'|staticFile }}" alt="icon">2011年</dt>
        <dd>北京简单科技有限公司获评软件企业，北京市经济和信息化委员会授予公司软件企业认定证书<br>
          中国教育学会高中教育专业会与简单科技达成合作，将在全国各地创建网络学习中心。同时中国教育学会高中教育专业委员会将对简教练在线课程进行监制，添加鉴定标识。
        </dd>
        <dt><img src="{{ 'image/tutorshow/icon_circle.png'|staticFile }}" alt="icon">2010年</dt>
        <dd>简单科技“智能引领互动教学技术”正式获批国家专利技术<br>
          北京简单科技有限公司获评国家高新技术企业
        </dd>
      </dl>
    </div>
    <!--联系我们-->
    <div class="aboutContent fn-right j_about j_aboutTell">
      <div class="aboutTitle">联系我们</div>
      <dl class="aboutItem">
        <dt><em></em>北京简单科技有限公司</dt>
        <dd>地址：北京市海淀区上地东路1号盈创动力大厦E座702</dd>
        <dd>邮编：100085</dd>
        <dd>电话：010-58858883</dd>
        <dd>传真：010-58858335</dd>
        <dd>E-mail：et@jiandan100.cn</dd>
        <dt><em></em>客服中心联系方式：</dt>
        <dd>如果您对简单学习网有任何疑问，或者对我们的服务有任何意见</dd>
        <dd>或建议，非常欢迎您直接与我们联络，我们将竭诚为您服务。</dd>
        <dd>客服热线：010-58858883，4008156888 （免长途费）</dd>
        <dd>客服邮箱：suggest@jiandan100.cn, et@jiandan100.cn</dd>
        <dt><em></em>网站推广合作：</dt>
        <dd>联系人：史老师 Email：wangmeng@jiandan100.cn QQ:2355280299</dd>
        <dt><em></em>品牌合作：</dt>
        <dd>联系人：秦老师 Email：market002@jiandan100.cn QQ:2355280297</dd>
      </dl>
    </div>
    <!--支付方式-->
    <div class="aboutContent fn-right j_about aboutPay j_aboutPay">
      <div class="aboutTitle">支付方式</div>
      <dl class="aboutItem">
        <span class="aboutPay-type">
          方式1：在线支付(支付宝、微信或银行卡)<br/>
          方式2：转账汇款
        </span>
        <dt><em></em>转账汇款注意事项(转账时需注意以下信息,请牢记):</dt>
        <dd>1.收款人信息:</dd>
        <table summary="汇款银行及账号" border="1" class="aboutItem-payCard">
          <thead>
          <tr>
            <th width="10%">&nbsp;</th>
            <th width="23%">账户名</th>
            <th>开户行</th>
            <th width="26%">账号</th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>账号1</td>
            <td>北京简单科技有限公司</td>
            <td>招商银行上地支行</td>
            <td>1109 0731 1610 105</td>
          </tr>
          <tr>
            <td>账号2</td>
            <td>北京简单科技有限公司</td>
            <td>中国建设银行股份有限公司北京上地支行</td>
            <td>1100 1045 3000 5301 2762</td>
          </tr>
          <tr>
            <td>账号3</td>
            <td>北京简单科技有限公司</td>
            <td>中国农业银行北京硅谷亮城支行</td>
            <td>1125 1401 0400 0056 0</td>
          </tr>
          <tr>
            <td>账号4</td>
            <td>北京简单科技有限公司</td>
            <td>中国工商银行上地支行</td>
            <td>0200 3363 1910 0021 404</td>
          </tr>
          <tr>
            <td>账号5</td>
            <td>北京简单科技有限公司</td>
            <td>中国邮政储蓄银行北京市海淀区上地支行</td>
            <td>9110 0001 0000 1490 69</td>
          </tr>
          <tr>
            <td>账号6</td>
            <td>曹红杰</td>
            <td>中国农业银行海淀大街支行</td>
            <td>6228 4800 1063 6737 610</td>
          </tr>
          <tr>
            <td>账号7</td>
            <td>曹红杰</td>
            <td>中国建设银行股份有限公司北京上地支行</td>
            <td>6227 0000 1117 0533 954</td>
          </tr>
          </tbody>
        </table>
        <span class="aboutPay-tip">注：账号1 不接收电汇付款。账号6、账号7 只接收同行的银行柜台付款或同行ATM机付款，不接收网银付款、跨行付款、电汇。</span>
        <dd>2. 汇款时请将网站用户名和学生真实姓名填写到汇款单附言栏（事由栏或备注栏）内；</dd>
        <dd>3. 汇款时请务必记下汇款详细信息：包括汇款银行的详细名称（如某某银行的某某支行或分理处或储蓄所）和详细地址、汇款时间、汇款金额，并在汇款后致电客服热线4008-110-818告知我们上述汇款信息，核对汇款信息后我们将确认收款并开放课程。</dd>
        <dd>
          <span class="aboutPay-img">下图为电汇申请书填写图示</span>
          <img src="{{ 'image/tutorshow/pic_remitBook.png'|staticFile }}" alt="电汇申请书"/>
        </dd>
      </dl>
    </div>
  </div>
</div>
{% endblock %}
{% block body_js %}
<script type="text/javascript" src="{{ 'common'|packaged|staticFile }}"></script>
<script type="text/javascript">
  $(document).ready(function () {
    if (window.location.search.substr(1) == 'contact') {
      $('.j_aboutContact').click();
    }else if(window.location.search.substr(1) == 'pay'){
      $('.j_aboutPay').click();
    }
  });
  $('.j_aboutList').on('click', function () {
    $('.j_aboutList').removeClass('aboutListActive');
    $('.j_about').css('display', 'none');
    $(this).addClass('aboutListActive');
    $('.j_about' + $(this).attr('item')).css('display', 'block');
  });
  $('.j_aboutOurTeam').hover(function () {
    $(this).children('p').css('display','none');
  },function () {
    $(this).children('p').css('display','block');
  })
</script>
{% endblock %}
