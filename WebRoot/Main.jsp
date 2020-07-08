<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>超市管理系统</title>
    <style type="text/css">
        <!--
        .STYLE1 {font-size: 12px}
        .STYLE3 {font-size: 12px; font-weight: bold; }
        -->
        *{
            margin: 0;
            padding:0;
        }
        .login{
            margin-left:240;
        	margin-top:80px;
        }
        .top{
            width:800px;
            overflow: hidden;
            background-color:#FFED97;
            margin-left:28px;
            margin-bottom:10px;
        }
        .cl{
            clear: both;
        }
        h1{
            text-align: center;
        }
        h3{
            text-align: center;
        }
        .top.ESC{
            float:right;
        }
        .h50{
            height: 50px;
            _font-size:0;
        }
        ul{
            list-style: none;
        }
        .but{
            width: 400px;
            min-height: 20px;
            display: block;
            background-color: #AFEEEE;
            border: 1px solid #FA8072;
            color: #fff;
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            margin: 0;
        }
        .fuction{
            margin-left: 200px;
            margin-top:20px;
        }
        .centre{
            width: 796px;
            margin-left:28px;
            border: 2px dashed #FFBB00;
            text-align: center;
            height: 280px;
            font-weight: bold;
            font-size: 24px;
            boder-bottom-left-radius：80px;
            boder-bottom-right-radius：80px;
        }
        body
        {
            background-image: url('0.jpg');
            background-repeat: no-repeat;
            background-position: 230px 170px;
        }
    </style>
    <script language="javascript">
        function exit(){
            if(confirm("您真的要退出本系统吗？")){
                parent.document.location.href="Login.jsp";
            }
        }
    </script>
</head>
<body>
<div class="login">
<div class="top">&nbsp;
    <h1><span class="theme">超市管理系统</span></h1>
    <span class="ESC" onclick="javasciprt:exit();" style="cursor:hand;">[退出系统]</span>
</div>
<div class="centre">
    <ul class="fuction">
        <li><a href="sell.jsp"><button class="but" type="submit"><h3>Sell</h3></button></a></li>
        <div class="cl h50"></div>
        <li><a href="receipt.jsp"><button class="but" type="submit"><h3>Receipt</h3></button></a></li>
        <div class="cl h50"></div>
        <li><a href="select.jsp"><button class="but" type="submit"><h3>Select</h3></button></a></li>
    </ul>
</div>
</div>
</body>
</html>
