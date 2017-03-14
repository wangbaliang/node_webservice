<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>简教练-学习中心</title>
  <link rel="stylesheet" href="{{ 'uc_s/app/css/base.css'|staticFile }}"/>
  <link rel="stylesheet" href="{{ 'uc_s/app/css/modules.css'|staticFile }}"/>
</head>
<body>
<div id="container"></div>
<script type="text/javascript">
  var USER_INFO = {
    userName: '{{ gUserName }}'
  };
</script>
{% block body_js %}{% endblock %}
</body>
</html>
