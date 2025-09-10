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

@WebServlet("/buscarProduto")
public class BuscarProdutoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProdutoDAO produtoDAO;

    public void init() {
        produtoDAO = new ProdutoDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        try {
            Produto produto = produtoDAO.buscarPorId(id);
            request.setAttribute("produto", produto);
            request.getRequestDispatcher("editarProduto.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Erro ao buscar produto para edição", e);
        }
    }
}