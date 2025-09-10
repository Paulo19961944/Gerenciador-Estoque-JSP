<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.meusite.model.Produto" %>
<%@ page import="java.util.ArrayList" %> <%-- Adicione essa importação --%>
<%@ page import="java.sql.SQLException" %> <%-- Adicione essa importação --%>
<%@ page trimDirectiveWhitespaces="true" %> <%-- Recomendado para produção --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gerenciador de Estoque</title>
<style>
    <%@ include file="style.css" %>
</style>
</head>
<body>
    <header>
        <h1>Gerenciador de Estoque</h1>
    </header>
    <section class="container">
        <h2 class="title">Produtos</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Produto</th>
                <th>Quantidade</th>
                <th>Preço (R$)</th>
                <th>Ações</th>
            </tr>
            <% 
            @SuppressWarnings("unchecked")
            List<Produto> produtos = (List<Produto>) request.getAttribute("listaProdutos");
            
            if (produtos != null) {
                for (Produto produto : produtos) {
            %>
            <tr>
                <td><%= produto.getId() %></td>
                <td><%= produto.getNome() %></td>
                <td><%= produto.getQuantidade() %></td>
                <td><%= String.format("%.2f", produto.getPreco()) %></td>
                <td>
                    <a href="editarProduto.jsp?id=<%= produto.getId() %>">Editar</a>
                    <a href="removerProduto?id=<%= produto.getId() %>" onclick="return confirm('Tem certeza que deseja remover este produto?');">Remover</a>
                </td>
            </tr>
            <% 
                }
            }
            %>
        </table>
    </section>
    <section class="produtos-add-remove">
        <a href="adicionarProduto.jsp" class="button produtos-add">(+) Adicionar Produto</a>
    </section>
</body>
</html>