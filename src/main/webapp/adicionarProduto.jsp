<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adicionar Produto</title>
<style>
    <%@ include file="style.css" %>
</style>
</head>
<body>
    <header>
        <h1>Adicionar Novo Produto</h1>
    </header>
    <section class="container">
        <form action="adicionarProduto" method="post">
            <label for="nome">Nome do Produto:</label>
            <br>
            <input type="text" id="nome" name="nome" required>
            <br><br>
            <label for="quantidade">Quantidade:</label>
            <br>
            <input type="number" id="quantidade" name="quantidade" required>
            <br><br>
            <label for="preco">Preço (R$):</label>
            <br>
            <input type="text" id="preco" name="preco" required>
            <br><br>
            <button type="submit">Salvar Produto</button>
        </form>
    </section>
</body>
</html>