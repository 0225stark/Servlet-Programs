<%@ include file="header.html"%>
<%@ page import="java.util.*"%>
<%! int x = 10; %>
<% out.println("Hello World"); %><br>
x = <%=x %>
<br>
<%-- print current date and time --%>
<%= new java.util.Date() %><br>

<!-- This page was generated at server on <%= (new java.util.Date()) %> -->

<% 
	java.util.Date dt = new java.util.Date(); 
	String dateStr = dt.toString();
	String time = "currentTime";
%>

<<%= time %> value="<%= dateStr %>" />

x = 
<jsp:expression>    x   </jsp:expression><br>
<jsp:expression>    time    </jsp:expression>
=> <jsp:expression>    dateStr     </jsp:expression>

<p>
<% int no = (int)(Math.random()*10); if(no % 2 == 0) { %>
Even
<% } else { %>
Odd
<% } %>
</p>

<jsp:declaration>	java.util.Date lastLoaded =  new java.util.Date();    </jsp:declaration>

<p>The servlet was last loaded on <b><%=lastLoaded%></b></p>

<jsp:scriptlet>
	java.util.Date d = new java.util.Date();	out.println("Date and time is : " + d);
</jsp:scriptlet>

<%! String msg="Hello World!"; %>
<% out.println(msg); %>
<%=msg%>
