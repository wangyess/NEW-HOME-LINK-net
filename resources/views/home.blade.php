<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>这个天才又来啦❤️</title>
    <link rel="stylesheet" href="/css/app.css">
</head>
<body>
<div id="app">
    <div>
        <nav class="navbar navbar-default">
            <div class="container">
                <ul class="nav navbar-nav">
                    <li class="active"><router-link to="/">首页<span class="sr-only">(current)</span></router-link></li>
                    <li><router-link to="/admin/house">admin</router-link></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><router-link to="/signup">注册</router-link></li>
                    <li><router-link to="/login">登录</router-link></li>
                    <li><router-link to="/logout">推出</router-link></li>
                </ul>
            </div>
        </nav>
    </div>

    <router-view></router-view>

</div>
<script src="/js/app.js"></script>
</body>
</html>