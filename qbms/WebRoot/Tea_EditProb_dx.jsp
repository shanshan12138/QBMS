<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
 <head>
    <meta charset="utf-8">
    <title>录入试题</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->
    
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>
  <body> 
    <div class="navbar"> </div>
    <div class="container-fluid">  
        <div class="row-fluid">
<div class="span9">
	
		<!--单选题录入区-->
	<form id="table1" action="updPro.action" method="post">

	<input type="hidden" name="proTeaid" value="${pro.proTeaid }">
<div class="well" id="tb1">
    <table class="table">
      <thead>
        <tr>
          <th>类别</th>
          <th>内容</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>题目编号：</td>
          <td><input type="text" name="proId" value="${pro.proId }" class="input-xlarge" readonly></td>
        </tr>
		<tr>
          <td>所属章节编号：</td>
          <td><input type="text" name="chaNo" value="${pro.chaNo }" class="input-xlarge" ></td>
        </tr>
		 <tr>
          <td>章节要点：</td>
          <td><input type="text" name="chaMpoint" value="${pro.chaMpoint }" class="input-xlarge" ></td>
        </tr>
		 <tr>
          <td>所属章节标题：</td>
          <td><input type="text" name="chaTitle" value="${pro.chaTitle }" class="input-xlarge" ></td>
        </tr>
		 <tr>
          <td>关键字：</td>
          <td><input type="text" name="proKey" value="${pro.proKey }" class="input-xlarge" ></td>
        </tr>
		<tr>
          <td>题干：</td>
          <td><input type="text" name="proTitle" value="${pro.proTitle }" class="input-xlarge" ></td>
        </tr>
		 <tr>
         <td>正确选项：</td>
         <td> 
         <c:set  var="proAns" value="${pro.proAns}" scope="request"/>
	<select name="proAns" id="Test1" class="input-xlarge">
          <option value="1" <c:if test="${proAns == 1}">selected</c:if>>A</option>
          <option value="2" <c:if test="${proAns == 2}">selected</c:if>>B</option>
		  <option value="3" <c:if test="${proAns == 3}">selected</c:if>>C</option>
		  <option value="4" <c:if test="${proAns == 4}">selected</c:if>>D</option>
    </select>
	     </td>
        </tr>
        <tr>
          <td>选项A:</td>
          <td><input type="text" name="proConta" value="${pro.proConta} " class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>选项B：</td>
         <td><input type="text" name="proContb" value="${pro.proContb }" class="input-xlarge" ></td>
        </tr>
        <tr>
          <td>选项C：</td>
          <td><input type="text" name="proContc" value="${pro.proContc }" class="input-xlarge" ></td>
        </tr>
		 <tr>
          <td>选项D：</td>
         <td><input type="text" name="proContd" value="${pro.proContd }" class="input-xlarge" ></td>
        </tr>
		 <tr>
          <td>本题难度系数：</td>
         <td> 
         <c:set  var="proCoe" value="${pro.proCoe}" scope="request"/>
	<select name="proCoe" id="Test2" class="input-xlarge">
          <option value="1" <c:if test="${proCoe == 1}">selected</c:if>>1</option>
          <option value="2" <c:if test="${proCoe == 2}">selected</c:if>>2</option>
		  <option value="3" <c:if test="${proCoe == 3}">selected</c:if>>3</option>
          <option value="4" <c:if test="${proCoe == 4}">selected</c:if>>4</option>
		  <option value="5" <c:if test="${proCoe == 5}">selected</c:if>>5</option>
    </select>
	     </td>
        </tr>
      </tbody>
    </table>
<div class="btn-toolbar">
    <button class="btn btn-primary" type="submit"><i class="icon-save"></i> 保存</button>
  <div class="btn-group">
  </div>
</div>
</div>
	</form>	
        </div>
    </div>
    <footer>
      
    </footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
		</div>
  </body>
</html>