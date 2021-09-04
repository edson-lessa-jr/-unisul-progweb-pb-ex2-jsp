<%@ page import="br.unisul.aula.model.Pessoa" %><%--
  Created by IntelliJ IDEA.
  User: edson
  Date: 03/09/2021
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Pessoa pessoa = new Pessoa();
    pessoa.setNome(request.getParameter("txtNome"));
    pessoa.setIdade(request.getParameter("nrIdade"));
    Pessoa.pessoaList.add(pessoa);
    response.sendRedirect("http://localhost:8080/ex2_pagina_jsp_war_exploded/");
%>
<h1><%=pessoa%></h1>

</body>
</html>
