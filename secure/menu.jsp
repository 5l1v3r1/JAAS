<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
  <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <title>Home Page</title>
  </head>
  <style>
  	<% if(!request.isUserInRole("gc")){ %> 
  		.gest_proveedores a:link{ color: red;}
  		.gest_proveedores a:visited{ color: red; }
  		.gest_compras a:link{ color: red;}
  		.gest_compras a:visited{ color: red; }
  	<% } %>
  	<% if(!request.isUserInRole("ac")){ %> 
  		.aut_compras a:link{ color: red;}
  		.aut_compras a:visited{ color: red; }
  	<% } %>
  	<% if(!request.isUserInRole("gv")){ %> 
  		.gest_clientes a:link{ color: red;}
  		.gest_clientes a:visited{ color: red; }
  		.gest_presupuestos a:link{ color: red;}
  		.gest_presupuestos a:visited{ color: red; }
  		.gest_facturas a:link{ color: red;}
  		.gest_facturas a:visited{ color: red; }
  	<% } %>
  	<% if(!request.isUserInRole("gn")){ %> 
  		.gest_trabajadores a:link{ color: red;}
  		.gest_trabajadores a:visited{ color: red; }
  		.gest_nominas a:link{ color: red;}
  		.gest_nominas a:visited{ color: red; }
  	<% } %>
  </style>
<body>
<div id="content">
<h1>Sistema de Gestión</h1>

<p>Hola <%= util.HTMLFilter.filter(request.getUserPrincipal().getName()) %>: este es el menu de la aplicación:</p>

<h3>Módulo Ventas</h3></td>
<p class="gest_clientes"><a href="ventas/gestion_clientes.jsp">Operación: gestionar clientes</a></p>
<p class="gest_presupuestos"><a href="ventas/gestion_presupuestos.jsp">Operación: gestionar presupuestos</a></p>
<p class="gest_facturas"><a href="ventas/gestion_facturas.jsp">Operación: gestionar facturas</a></p>

<h3>Módulo Compras</h3></td>
<p class="gest_proveedores"><a href="compras/gestion_proveedores.jsp">Operación: gestionar proveedores</a></p>
<p class="gest_compras"><a href="compras/gestion_compras.jsp">Operación: gestionar compras</a></p>
<p class="aut_compras"><a href="compras/autorizar_compras.jsp">Operación: autorizar compras</a></p>


<h3>Módulo Nóminas</h3></td>
<p class="gest_trabajadores"><a href="nominas/gestion_trabajadores.jsp">Operación: gestionar trabajadores</a></p>
<p class="gest_nominas"><a href="nominas/gestion_nominas.jsp">Operación: gestionar nóminas</a></p>

<p> Salir de la aplicación: <a href="${pageContext.request.contextPath}/logout.jsp"> Salir</a> </p>
</body>
</html>
