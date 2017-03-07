<?xml version="1.0" encoding="GB2312"?>
<!DOCTYPE html>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"
              doctype-system="about:legacy-compat"
              encoding="UTF-8"
              indent="yes" />
<xsl:template match="/">
<html>
  <head>
   <title>天凡的小窝</title>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
   <link type="text/css" media="all" rel="stylesheet" href="index.css"/>
   <script src="test.js"/>
<script>
alert("js");
</script>
  </head>
  <body>
  <div id="top">
   <div id="menu"> <!--顶部菜单-->
     <ul>
      <xsl:apply-templates select="//menu"/>
     </ul>
   </div>
   </div>
   <div id="logoarea"> <!--logo和banner-->
   </div>
   <div id="main"><!--主体部分-->
     <div id="mainleft"><!--主体左侧-->
      <div id="leftbulletin"><!--左侧公告-->
       <xsl:apply-templates select="//bulletin"/>
      </div>
      <div><!--关于本站-->
       <xsl:apply-templates select="//aboutmysite"/>
      </div>
      <div><!--新文章列表-->
      <div class="lefttitle">新日志列表</div>
      <div class="listul">
      <ul>
       <xsl:apply-templates select="//mytitlelist"/>
       </ul>
      </div>
      </div>
      <div><!--友情链接-->
      <div class="lefttitle">友情链接</div>
      <div class="listul">
       <ul>
       <xsl:apply-templates select="//myfriendlink"/>
       </ul>
       </div>
      </div>
     </div>
     <div><!--主体右侧-->
      <ul>
      <xsl:apply-templates select="//mybloglist"/>
      </ul>
     </div>
   </div>

        <video width="320" height="240" controls="controls">
            <source src="movie.ogg" type="video/ogg"/>
            <source src="movie.mp4" type="video/mp4"/>
            Your browser does not support the video tag.
        </video>

   <div id="bottom"><!--底部版权部分-->
     <xsl:apply-templates select="//copyright"/>
   </div>  
  </body>
</html>

</xsl:template>
<xsl:template match="//menu">
  <xsl:for-each select="child::topmenu">
  <li>
   <a target="_blank">
    <xsl:attribute name="href">
     <xsl:value-of select="hyperlink"/>
    </xsl:attribute>    
    <xsl:value-of select="item"/>
   </a>
  </li>
</xsl:for-each>
</xsl:template>
<xsl:template match="//bulletin">
  <div class="lefttitle">本站公告</div>
  <div class="left2">
   <xsl:value-of select="content"/>
  </div>
  <div id="bulletintime">
   <xsl:value-of select="time"/>
  </div>
</xsl:template>
<xsl:template match="// aboutmysite">
  <div class="lefttitle">关于本站</div>
  <div class="left2">
   <xsl:value-of select="content"/>
  </div>
  <div id="bulletintime">
   <xsl:value-of select="time"/>
  </div>
</xsl:template>
<xsl:template match="mytitlelist">
  <xsl:for-each select="child::titlelist">
   <li>
    <a target="_blank">
    <xsl:attribute name="href">
     <xsl:value-of select="hyperlink"/>
    </xsl:attribute>    
    <xsl:value-of select="item"/>
   </a>
   </li>
  </xsl:for-each>
</xsl:template>
<xsl:template match="//myfriendlink">
    <xsl:for-each select="child::friendlink">
   <li>
    <a target="_blank">
    <xsl:attribute name="href">
     <xsl:value-of select="hyperlink"/>
    </xsl:attribute>    
    <xsl:value-of select="item"/>
   </a>
   </li>
  </xsl:for-each>
</xsl:template>

<xsl:template match="//mybloglist">
   <xsl:for-each select="child::bloglist">
   <li class="bloglist">
    <div>标题：<xsl:value-of select="title"/></div>
    <div>日志发表时间：<xsl:value-of select="time"/>日志类别：<xsl:value-of select="kind"/></div>
    <div class="myblogcontent">内容摘要：
    <a target="_blank">
    <xsl:attribute name="href">
     <xsl:value-of select="hyperlink"/>
    </xsl:attribute>    
    <xsl:value-of select="item"/>
   </a>
   </div>
   <div>浏览量：<xsl:value-of select="clicknum"/></div>
   </li>
  </xsl:for-each>
</xsl:template>
<xsl:template match="//copyright">
  <div><xsl:value-of select="author"/></div>
  <div><xsl:value-of select="time"/>
  <xsl:value-of select="version"/></div>
  <div>E-mail:<xsl:value-of select="email"/></div>
</xsl:template>
</xsl:stylesheet>