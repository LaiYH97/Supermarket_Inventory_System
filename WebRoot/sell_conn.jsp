<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
  <head>    
    <title>商品销售</title>
  </head>
  <body>
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
	 String sql0="select * from goods_sell where Gname=?";
	 PreparedStatement pstmt0=conn.prepareStatement(sql0);
	 request.setCharacterEncoding("UTF-8"); 
	 //设置字符编码，避免乱码
	 String Gname0=request.getParameter("Gname");
	 pstmt0.setString(1,Gname0);
     ResultSet rs0=pstmt0.executeQuery();
     if(rs0.next()){

	 String sql1="update goods_sell set Gsales=Gsales+? where Gname=?";
	 PreparedStatement pstmt1=conn.prepareStatement(sql1);
	 request.setCharacterEncoding("UTF-8"); 
	 //设置字符编码，避免乱码
	 int Gsales1=Integer.parseInt(request.getParameter("Gsales"));
	 pstmt1.setInt(1,Gsales1);
	 pstmt1.setString(2,Gname0);
	 int n=pstmt1.executeUpdate();
	 if(n>=1){%>销售成功！<br><% }
	 else{%>销售失败！<%=n%><br><%}
	 if(pstmt1!=null){pstmt1.close();}
	 if(conn!=null){conn.close();}
     }
     else{	 
	 String sql2="Insert into goods_sell(Gname,Gnumber,Gsales)values(?,?,?)";
	 PreparedStatement pstmt2=conn.prepareStatement(sql2);
	 request.setCharacterEncoding("UTF-8"); 
	 //设置字符编码，避免乱码
	 String Gname2=request.getParameter("Gname");
	 String Gnumber=request.getParameter("Gnumber");
	 int Gsales2=Integer.parseInt(request.getParameter("Gsales"));
	 pstmt2.setString(1,Gname2);
	 pstmt2.setString(2,Gnumber);
	 pstmt2.setInt(3,Gsales2);
	 int n=pstmt2.executeUpdate();
	 if(n==1){%> 销售成功！<br> <%} 
	 else{%> 销售失败！ <br> <% }
	 if(pstmt2!=null){pstmt2.close();}
	 if(conn!=null){conn.close();}
	 }%>
  </body>
</html>
