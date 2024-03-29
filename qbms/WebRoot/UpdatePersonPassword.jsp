<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>学生信息修改</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.8.1.min.js" type="text/javascript"></script>
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
    <div class="container-fluid">
        <div class="row-fluid">
    <div class="span4 offset4 dialog">
        <div class="block">
            <div class="block-heading">修改密码</div>
            <div class="block-body">
                <form action="updUser.action" method="post">
                	<c:set var="t" value="${type}"/>
                	<c:if test="${t eq 'stu'}"><input type="hidden" name="userId" value="${userId}"></c:if>
                	<c:if test="${t eq 'tea'}"><input type="hidden" name="userId" value="${userId}"></c:if>
                	<c:if test="${t eq 'adm'}"><input type="hidden" name="userId" value="${userId}"></c:if>
                	<input type="hidden" name="type" value="${type}">
                	<input type="hidden" name="user" value="${user.user}">
                   	<label>原密码</label>
                    <input id="pwd" type="password" class="span12" name="pwd">
					<label>新密码</label>
                    <input id="pwdNew" type="password" class="span12" name="pwdNew">
                    <label>确认密码</label>
                    <input id="repwdNew" type="password" class="span12" onchange="check()">
                    <button id="sub" class="btn btn-primary pull-right" type="submit">修改密码</button>   
                    <div class="clearfix"></div>
                </form>
            </div>
        </div>
    </div>
</div>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
</div>    
</body>
<script>

	function check(){
		var pwdNew = document.getElementById("pwdNew").value;
		var repwdNew = document.getElementById("repwdNew").value;
		if(pwdNew != repwdNew){
				document.getElementById("sub").disabled=true;
		}
		else
				document.getElementById("sub").disabled=false;
	}
</script>
</html>
