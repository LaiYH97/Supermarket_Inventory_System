<%@ page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
  <head>    
    <title>商品销售单</title>
    <style type="text/css">
	*{
    margin: 0;
    padding:0;
    }
    .quanbu{
    margin-top:30px;
    }
    .biankuang{
    border: 2px dashed #FFBB00;
    width: 796px;
    height: 300px;
    margin-left:271px;
    }
	.top{	        
    width:800px;
    overflow: hidden;
    background-color:#FFED97;
    margin-left:270px;
    margin-top:110px;
    }
    h1{
    text-align:center;
    }
    body{
    background-image: url('1.jpg');
    background-repeat: no-repeat;
    background-position: 430px 200px;
    }
    </style>
  </head>
  <body>
     <div class="top">&nbsp;
        <h1>销售单</h1>
     </div>
  	  <div class="biankuang">  
      <center class="quanbu">
	<%String driverName = "com.mysql.jdbc.Driver";
	  String userName = "root";
	  String userPwd = "123456";
	  String dbName = "jxcsystem";
	  String url1 = "jdbc:mysql://localhost:3306/" + dbName;
	  String url2 = "?user=" + userName + "&password=" + userPwd;
	  String url3 = "&useUnicode=true&characterEncoding=UTF-8";
	  String url = url1 + url2 + url3;
	  Class.forName(driverName);
	  Connection conn=DriverManager.getConnection(url);
	  //连接数据库的公共代码
	 String sql="select goods_sell.*,goods_stock.sell_unit_price,goods_stock.Gname from goods_sell inner join goods_stock where goods_sell.Gname=goods_stock.Gname";
	 PreparedStatement pstmt=conn.prepareStatement(sql);
	 ResultSet rs=pstmt.executeQuery();
	 rs.last();
	 request.setCharacterEncoding("UTF-8"); 
	 //设置字符编码，避免乱码 %>

	 <table border="2" bgcolor="d6e9fc" width="650">
	 	<tr bgcolor="8ec2f5" align="center">
	 		<td>商品名称</td><td>商品编号</td><td>出售单价</td><td>销售数量</td><td>销售日期</td><td>销售总额</td>
	 	</tr>
	 <%rs.beforeFirst();
	   while(rs.next()){ %>
	   <tr align="center">
	       <td><%=rs.getString("Gname") %></td>
	       <td><%=rs.getString("Gnumber") %></td>
	       <td><%=rs.getInt("Sell_unit_price") %></td>
	       <td><%=rs.getInt("Gsales") %></td>
	       <td><%=rs.getTimestamp("Sell_time") %></td>
	       <td><%=rs.getInt("Sell_unit_price")*rs.getInt("Gsales") %></td>
	   </tr>
	   <%} %>
	 </table>
	 </center>
	 </div>
	 <%if(rs!=null){rs.close();}
       if(conn!=null){conn.close();}	 
	  %>	  
  </body>
</html>
