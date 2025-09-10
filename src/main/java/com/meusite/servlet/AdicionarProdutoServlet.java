package com.meusite.servlet;

import com.meusite.dao.ProdutoDAO;
import com.meusite.model.Produto;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adicionarProduto")
public class AdicionarProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProdutoDAO produtoDAO;

    public void init() {
        produtoDAO = new ProdutoDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nome = request.getParameter("nome");
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        double preco = Double.parseDouble(request.getParameter("preco"));

        Produto novoProduto = new Produto(nome, quantidade, preco);
        
        try {
            produtoDAO.adicionar(novoProduto);
            response.sendRedirect("listarProdutos");
        } catch (SQLException e) {
            throw new ServletException("Erro ao adicionar produto", e);
        }
    }
}