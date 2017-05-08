<#assign root=rc.getContextPath()>
<#macro layout>
<!DOCTYPE HTML>
<html>
<head>
  <title>Jandy</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="${root}/webjars/Semantic-UI/2.2.2/semantic.min.css">
  <link rel="stylesheet" href="${root}/webjars/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="${root}/webjars/jquery/2.1.4/jquery.min.js"></script>

  <link rel="stylesheet" href="${root}/css/header.css">
</head>
<body>
<header class="ui large borderless stackable menu <#if self??>inverted green</#if>">
  <a class="header item" href="${root}/">
    <img src="${root}/images/logo.png">
  </a>
  <#if self??>
    <a class="item" href="#">My Projects</a>
    <div class="right menu">
      <div class="ui dropdown item" href="#">
        <img src="${self.avatarUrl}">
        <i class="dropdown icon"></i>
        <div class="menu borderless">
          <a class="item" href="${root}/logout">Sign Out</a>
        </div>
      </div>
    </div>
  <#else>
    <a class="item" href="#">Getting Started</a>
    <div class="ui dropdown item">
      Docs
      <i class="dropdown icon"></i>
      <div class="menu borderless">
        <a class="item" href="#">API</a>
      </div>
    </div>
    <a class="item" href="#">References</a>
    <div class="right menu">
      <form class="item borderless disabled" method="GET" action="${root}/login">
        <button type="submit" class="ui button green">Sign in</button>
      </form>
    </div>
  </#if>
</header>
<script src="${root}/js/jandy.js"></script>
<#nested />
<script src="${root}/webjars/Semantic-UI/2.2.2/semantic.min.js"></script>
<script>
  'use strict';

  $(".ui.dropdown").dropdown();
</script>
<script src="${root}/webjars/d3js/3.5.5/d3.min.js"></script>
<script src="${root}/webjars/lodash/3.10.1/lodash.min.js"></script>
<script src="${root}/webjars/json2/20140204/json2.min.js"></script>
<script src="${root}/webjars/raphaeljs/2.1.4/raphael-min.js"></script>
</body>
</html>
</#macro>