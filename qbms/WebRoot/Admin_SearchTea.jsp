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
    <title>查询教师</title>
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
    <h1 class="page-title">查询课程负责人</h1>
  </div>
</div>
<div class="well">
    <table class="table">
      <thead>
        <tr>
          <th>教师编号</th>
          <th>姓名</th>
          <th>院系</th>
          <th>电子邮箱</th>
		  <th>操作</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
          <c:forEach items="${teaList}" var="tea">
		  <tr>
					<td><c:out value="${tea.teaNo}"></c:out></td>
					<td><c:out value="${tea.teaName}"></c:out></td>
					<td><c:out value="${tea.teaMajor}"></c:out></td>
					<td><c:out value="${tea.teaMail}"></c:out></td>
		            <td>
		              <a href="findTeaById.action?teaId=${tea.teaId}"><i class="icon-pencil"></i></a>
		              
		              
	<script type="text/javascript">
        function cli(){
            //confirm方法弹出一个对话框,可以选择确定与取消操作
            //同时该方法有返回值,true和false,两个布尔值
            var flag = confirm("确定删除吗?");
            if(flag){
                alert("你点击了确定");
                //进行后台处理,路径跳转
                window.location.href="delTeaById.action?teaId=${tea.teaId}";
            }else{
                alert("你点击了取消");
            }
        }
    </script>
		               
		               
		          <input type="button" onclick="cli()" width="100" height="50" value="删除"></input>
		              
		              
		              
		            </td>
		  </tr>
		  </c:forEach>
      </tbody>
    </table>
</div>
<div class="pagination">
    <ul>
        <li><a href="#">首页</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">下一页</a></li>
    </ul>
</div>


</div>
    <footer>

    </footer>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
	</body>
</html>