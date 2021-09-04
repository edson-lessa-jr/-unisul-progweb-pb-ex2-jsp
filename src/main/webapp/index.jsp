<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="br.unisul.aula.model.Pessoa" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Cadastro Pessoa</h1>
<h2>JSP</h2>
<form action="cadPessoa.jsp" method="post">
    Nome: <input type="text" name="txtNome"><br>
    Idade: <input type="number" name="nrIdade"><br>
    <br>
    <input type="submit" value="Enviar">
</form>
<h2>Servlet</h2>
<form action="PessoaServlet" method="post">
    Nome: <input type="text" name="txtNome"><br>
    Idade: <input type="number" name="nrIdade"><br>
    <br>
    <input type="submit" value="Enviar">
</form>

<h1>Resultados dos cadastro</h1>
<%
    for (int i = 0; i < Pessoa.pessoaList.size(); i++) {
     out.println(Pessoa.pessoaList.get(i)+"<br>");
    }
%>

<h1>Teste JSP</h1>


<%
    String[] array = {"um", "dois", "três", "quatro"};
    List<String> strings = new ArrayList<>(Arrays.asList(array));
    for (int j = 0; j < 100; j++) {

        for (int i = 0; i < strings.size(); i++) {
//        out.println("i: "+i+" <> "+strings.get(i));

%>
<p>i: <%=i%> <> <%=strings.get(i)%>
</p>
<%
        }
    }
%>

</body>
</html>

