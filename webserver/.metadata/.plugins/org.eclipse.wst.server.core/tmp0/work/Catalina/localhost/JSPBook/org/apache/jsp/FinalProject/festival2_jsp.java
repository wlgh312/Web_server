/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.43
 * Generated at: 2021-06-14 15:46:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.FinalProject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class festival2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/FinalProject/dbconn.jsp", Long.valueOf(1622351212786L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Festival Travel</title>\r\n");
      out.write("<style>\r\n");
      out.write("@import url('https://fonts.googleapis.com/css2?family=Big+Shoulders+Stencil+Display&family=Caveat:wght@700&family=Nunito:ital,wght@1,700&family=Varela+Round&display=swap');\r\n");
      out.write("body{\r\n");
      out.write("background:powderblue;\r\n");
      out.write("padding:0px 40px;\r\n");
      out.write("}\r\n");
      out.write("#logo{\r\n");
      out.write("margin:10px 0px 10px 0px;\r\n");
      out.write("}\r\n");
      out.write("h1{\r\n");
      out.write("display:inline-block;\r\n");
      out.write("color:#303974;\r\n");
      out.write("text-shadow:3px 3px 4px #60a3bc;\r\n");
      out.write("font-size:55px;\r\n");
      out.write("font-family: 'Caveat', cursive;\r\n");
      out.write("line-height:35px;\r\n");
      out.write("}\r\n");
      out.write("#topmenu{\r\n");
      out.write("width:470px;\r\n");
      out.write("height:40px;\r\n");
      out.write("margin-top:70px;\r\n");
      out.write("float:right;\r\n");
      out.write("}\r\n");
      out.write("#topmenu ul li{\r\n");
      out.write("list-style:none;\r\n");
      out.write("color:white;\r\n");
      out.write("float:left;\r\n");
      out.write("text-align:center;\r\n");
      out.write("height:40px;\r\n");
      out.write("vertical-align:center;\r\n");
      out.write("line-height:40px;\r\n");
      out.write("margin-right:10px;\r\n");
      out.write("}\r\n");
      out.write("#topmenu .menu{\r\n");
      out.write("text-decoration:none;\r\n");
      out.write("color:white;\r\n");
      out.write("display:block;\r\n");
      out.write("width:120px;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("font-size:25px;\r\n");
      out.write("}\r\n");
      out.write("#topmenu .menu:hover{\r\n");
      out.write("text-decoration:underline;\r\n");
      out.write("}\r\n");
      out.write("#imgDiv{\r\n");
      out.write("display:inline-block;\r\n");
      out.write("}\r\n");
      out.write("#mainDiv{\r\n");
      out.write("display:inline-block;\r\n");
      out.write("width:520px;\r\n");
      out.write("height:500px;\r\n");
      out.write("overflow:auto;\r\n");
      out.write("background:white;\r\n");
      out.write("border:3px solid midnightblue;\r\n");
      out.write("border-radius:10px;\r\n");
      out.write("padding:20px;\r\n");
      out.write("float:right;\r\n");
      out.write("}\r\n");
      out.write("details{\r\n");
      out.write("display:inline-block;\r\n");
      out.write("width:220px;\r\n");
      out.write("margin:10px;\r\n");
      out.write("}\r\n");
      out.write("#tw{\r\n");
      out.write("width:100px;\r\n");
      out.write("font-size:10px;\r\n");
      out.write("margin:3px;\r\n");
      out.write("}\r\n");
      out.write(".btn{\r\n");
      out.write("text-align:center;\r\n");
      out.write("padding:10px 20px;\r\n");
      out.write("background:#3c4873;\r\n");
      out.write("border:1px solid #3c4982;\r\n");
      out.write("color:white;\r\n");
      out.write("border-radius:5px;\r\n");
      out.write("float:right;\r\n");
      out.write("margin-left:20px;\r\n");
      out.write("box-shadow:5px 5px 5px #3c6382;\r\n");
      out.write("}\r\n");
      out.write("#btnDiv{\r\n");
      out.write("width:100%;\r\n");
      out.write("margin:50px 0;\r\n");
      out.write("float:right;\r\n");
      out.write("}\r\n");
      out.write("article{\r\n");
      out.write("display:bloak;\r\n");
      out.write("}\r\n");
      out.write("#date{\r\n");
      out.write("position:fixed;\r\n");
      out.write("float:left;\r\n");
      out.write("bottom:5px;\r\n");
      out.write("color:grey;\r\n");
      out.write("font-size:13px;\r\n");
      out.write("}\r\n");
      out.write("#web{\r\n");
      out.write("display:none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
request.setCharacterEncoding("utf-8"); 
      out.write('\r');
      out.write('\n');
      Javabean.RootBean rt = null;
      synchronized (session) {
        rt = (Javabean.RootBean) _jspx_page_context.getAttribute("rt", javax.servlet.jsp.PageContext.SESSION_SCOPE);
        if (rt == null){
          rt = new Javabean.RootBean();
          _jspx_page_context.setAttribute("rt", rt, javax.servlet.jsp.PageContext.SESSION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("rt"), request);
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
 Connection conn = null;
String url = "jdbc:mysql://localhost:3306/JSPBookDB";
String user = "root";
String password = "7727312g";

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, user, password);

      out.write('\r');
      out.write('\n');

String map = request.getParameter("map");

      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("<img src=\"logo.png\" id=\"logo\" width=80>\r\n");
      out.write("<h1>Festival<br>Travel</h1>\r\n");
      out.write("<nav id=\"topmenu\">\r\n");
      out.write("<ul>\r\n");
      out.write("<li><a class=\"menu\" href=\"festival1.jsp\" style=\"color:midnightblue;text-decoration:underline;\">FESTIVAL</a></li>\r\n");
      out.write("<li>|</li>\r\n");
      out.write("<li><a class=\"menu\" href=\"spot1.jsp\">SPOT</a></li>\r\n");
      out.write("<li>|</li>\r\n");
      out.write("<li><a class=\"menu\" href=\"root.jsp\">ROOT</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</nav>\r\n");
      out.write("</header>\r\n");
      out.write("<article>\r\n");
      out.write("<div id=\"imgDiv\">\r\n");
      out.write("<img src='");
      out.print(map );
      out.write(".png' width=500px>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"mainDiv\">\r\n");
      out.write("<form method=post action=root.jsp>\r\n");

ResultSet rs = null;
Statement stmt = null;
String pre = "hi";
String chk="";
try{
String sql = "select * from festival order by area2";
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
if(rt.getFestival()[0]!=null){
	for(int i=0; i<rt.getFestival().length; i++)
		chk+=rt.getFestival()[i].split(",")[0]+",";
}
while(rs.next()){
	String area1 = rs.getString("area1");
	String area2 = rs.getString("area2");
	String name = rs.getString("name");
	String tel = rs.getString("tel");
	String web = rs.getString("web");
	String contents = rs.getString("contents");
	String address = rs.getString("address");
	if(web.equals(""))
		web="nosite";
	String latitude = rs.getString("latitude");//세로, 클수록 북쪽
	String longitude = rs.getString("longitude");//가로, 클수록 동쪽
	if(area1.equals(map)){
		if(!pre.equals(area2)){
			if(!pre.equals("hi")){
				
      out.write("</details>\r\n");
      out.write("\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t<details><summary>");
      out.print( area2);
      out.write("</summary>\r\n");
		}
		if(chk.contains(name)){
			
      out.write("\r\n");
      out.write("\t\t\t<input type=\"checkbox\" name=\"festival\" value=\"");
      out.print(name );
      out.write(',');
      out.print(latitude );
      out.write(',');
      out.print(longitude);
      out.write(',');
      out.print(web );
      out.write(',');
      out.print(contents );
      out.write("\" checked>");
      out.print(name );
      out.write("<br>\r\n");
      out.write("\t\t\t<p id=\"tw\">tel : ");
      out.print(tel );
      out.write("<br>주소 : ");
      out.print(address );
      out.write("</p><br>\r\n");
		}else{
      out.write("\r\n");
      out.write("\t\t\t<input type=\"checkbox\" name=\"festival\" value=\"");
      out.print(name );
      out.write(',');
      out.print(latitude );
      out.write(',');
      out.print(longitude);
      out.write(',');
      out.print(web);
      out.write(',');
      out.print(contents);
      out.write('"');
      out.write('>');
      out.print(name );
      out.write("<br>\r\n");
      out.write("\t\t\t<p id=\"tw\">tel : ");
      out.print(tel );
      out.write("<br>주소 : ");
      out.print(address );
      out.write("</p><br>\r\n");
}
}
	pre=area2;
}
}catch(SQLException ex){
	out.println("festival 테이블 호출이 실패했습니다.<br>");
	out.println("SQLException: " + ex.getMessage());
}finally{
	if(rs!=null)
		rs.close();
	if(stmt!=null)
		stmt.close();
	if(conn!=null)
		conn.close();
}

      out.write("\r\n");
      out.write("</div></article>\r\n");
      out.write("\r\n");
      out.write("<div id=\"btnDiv\">\r\n");
      out.write("<input class=\"btn\" type=\"submit\" value=\"Make Root!\">\r\n");
      out.write("<input class=\"btn\" type=\"submit\" value=\"관광지 선택하러 가기 \" onclick=\"javascript:form.action='spot1.jsp';\">\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("<p id=\"date\">축제 데이터 업데이트 날짜 : 2021-05-12</p>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
