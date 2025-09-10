package com.meusite.servlet;

import com.meusite.dao.ProdutoDAO;
import com.meusite.model.Produto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/listarProdutos")
public class ListarProdutosServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProdutoDAO produtoDAO;

    public void init() {
        produtoDAO = new ProdutoDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Produto> produtos = produtoDAO.listarTodos();
            request.setAttribute("listaProdutos", produtos);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Erro ao listar produtos", e);
        }
    }
}