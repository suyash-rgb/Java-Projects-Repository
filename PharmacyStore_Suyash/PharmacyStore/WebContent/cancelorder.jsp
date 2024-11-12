<%@page import="com.pharmacystore.pojo.Product"%>
<%@page import="com.pharmacystore.dao.ProductDao"%>
<%@page import="com.pharmacystore.daoimpl.ProductDaoImpl"%>
<%@page import="com.pharmacystore.daoimpl.OrderDAOImpl"%>
<%@page import="com.pharmacystore.dao.OrderDao"%>
<%@page import="com.pharmacystore.pojo.Order"%>
<%@page import="com.pharmacystore.daoimpl.UserDaoImpl"%>
<%@page import="com.pharmacystore.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%
   response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
   response.setHeader("Pragma", "no-cache"); // HTTP 1.0
   response.setDateHeader("Expires", 0);
   %>
<%
   int oid = Integer.parseInt(request.getParameter("orderid"));
   
   
   ProductDao pdao = new ProductDaoImpl();
   UserDao udao = new UserDaoImpl();
   OrderDao odao  = new OrderDAOImpl();
   Order o = new Order();
   o.setOrderid(oid);
   
   int detail[] = odao.getProductDetailsFromOrderId(o);
   Product p = new Product();
   p.setProductid(detail[0]);
   int quantity = pdao.getQuantityOfProduct(detail[0]);
   int upquantity = detail[1]+quantity;
   
   if(odao.getStatus(oid)==false){
   	if(odao.cancelOrder(oid)) 
   	{	Product p2 = new Product();
   		p2.setProductid(detail[0]);
   		p2.setQuantity(upquantity);
   		pdao.updateQuantityAfterCancellation(detail[0], upquantity);
   		
   		out.print("success");
   		
   	}
   	else
   	{
   		System.out.println("failure");	
   	}
   }
   else{
   	System.out.println("product is already cancelled");
   	
   	%>
<p style="color:green">Product Already Cancelled </p>
<jsp:include page="userhome.jsp"></jsp:include>
<% 		
   }
   %>