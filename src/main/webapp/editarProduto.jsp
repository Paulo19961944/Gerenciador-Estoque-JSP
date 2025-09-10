<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.meusite.model.Produto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Produto</title>
<style>
    <%@ include file="style.css" %>
</style>
</head>
<body>
    <header>
        <h1>Editar Produto</h1>
    </header>
    <section class="container">
        <% 
            Produto produto = (Produto) request.getAttribute("produto");
            if (produto != null) {
        %>
        <form action="atualizarProduto" method="post">
            <input type="hidden" name="id" value="<%= produto.getId() %>">
            <label for="nome">Nome do Produto:</label>
            <br>
            <input type="text" id="nome" name="nome" value="<%= produto.getNome() %>" required>
            <br><br>
            <label for="quantidade">Quantidade:</label>
            <br>
            <input type="number" id="quantidade" name="quantidade" value="<%= produto.getQuantidade() %>" required>
            <br><br>
            <label for="preco">Preço (R$):</label>
            <br>
            <input type="text" id="preco" name="preco" value="<%= produto.getPreco() %>" required>
            <br><br>
            <button type="submit">Salvar Alterações</button>
        </form>
        <% 
            } else {
        %>
            <p>Produto não encontrado.</p>
        <% 
            }
        %>
    </section>
</body>
</html>