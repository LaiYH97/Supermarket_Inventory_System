<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
  <head>
	<title>商品销售页面</title>
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
            margin-left:320px;
        	margin-top:60px;
            }
            .biankuang{
            border: 2px dashed #FFBB00;
        	width: 796px;
        	height: 300px;
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
    <h1>销售、进货、库存查询</h1>
  </div>
  <div class="biankuang">
  <div class="zhengti">   		
    		<input class="but" type="submit" value="销 售 单" onclick="location.href='sell_slip.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
    		<input class="but" type="reset" value="进 货 单" onclick="location.href='receipt_slip.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;
    		<input class="but" type="reset" value="库 存 单" onclick="location.href='stock_slip.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;   		
  </div>
  </div>
  </body>
</html>
