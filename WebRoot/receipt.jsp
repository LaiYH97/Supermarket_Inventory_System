<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
	<title>商品入库页面</title>
	<style type="text/css">
	        *{
            margin: 0;
            padding:0;
            }
	        .top{	        
            width:800px;
            overflow: hidden;
            background-color:#FFED97;
            margin-left:270px;
            margin-top:100px;
            }
            h1{
            text-align:center;
            }
            .zhengti{
            margin-left:260px;
        	margin-top:30px;
            }
            .biankuang{
            border: 2px dashed #FFBB00;
        	width: 796px;
        	margin-left:271px;
            }
			input:active{
			border:1px solid red;
			border-color:#58ACFA; 
			-webkit-transition:border linear .2s,-webkit-box-shadow linear .5s; 
			-webkit-box-shadow:0 0 3px #58ACFA; 
			-moz-box-shadow: 0 0 3px #58ACFA;
			box-shadow:0 0 3px #58ACFA;
			}
			input:focus{
			border:1px solid red;
			border-color:#58ACFA; 
			-webkit-transition:border linear .2s,-webkit-box-shadow linear .5s; 
			-webkit-box-shadow:0 0 3px #58ACFA; 
			-moz-box-shadow: 0 0 3px #58ACFA;
			box-shadow:0 0 3px #58ACFA;
			}
			.but{
            width: 150px;
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
            body{
            background-image: url('0.jpg');
            background-repeat: no-repeat;
            background-position: 230px 170px;
        	}
	</style>
  </head>
  <body>
  <div class="top">&nbsp;
    <h1><span class="theme">商品入库</span></h1>
  </div>
  <div class="biankuang">
  <div class="zhengti">
    <form action="receipt_conn.jsp" method="post">
    <table border="0" width="138" hight="252">
    	<div><tr><td>商品名称</td></tr><td><input type="text" name="Gname" style="width: 300px;"></td></div>
    	<div><tr><td>商品编号</td></tr><td><input type="text" name="Gnumber" style="width: 300px;"></td></div>
    	<div><tr><td>商品入库量</td></tr><td><input type="text" name="Greceipt" style="width: 300px;"></td></div>
    	<tr align="center">
    		<td colspan="2">
    			<input class="but" type="submit" value="进  货">&nbsp;&nbsp;&nbsp;&nbsp;
    			<input class="but" type="reset" value="取  消" onclick="location.href='Main.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
    		</td>
    	</tr>
    </table>
    </form>
  </div>
  </div>
  </body>
</html>
