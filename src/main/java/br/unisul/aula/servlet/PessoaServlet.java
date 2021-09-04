package br.unisul.aula.servlet;

import br.unisul.aula.model.Pessoa;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PessoaServlet", value = "/PessoaServlet")
public class PessoaServlet extends HttpServlet {



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Pessoa pessoa = new Pessoa();
        pessoa.setNome(request.getParameter("txtNome"));
        pessoa.setIdade(request.getParameter("nrIdade"));
        Pessoa.pessoaList.add(pessoa);
        response.sendRedirect("http://localhost:8080/ex2_pagina_jsp_war_exploded/");
    }
}
