<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
	@SuppressWarnings("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de Contato</title>
<link rel="icon" href="imagens/telefone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de Contato</h1>
	<a href="novo.html" class="botao1">Novo contato</a>
	<a href="report" class="botao2">Relatório</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Fone</th>
				<th>Email</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%for (JavaBeans jb : lista) { %>
				<tr>
					<td><%=jb.getIdcon()%></td>
					<td><%=jb.getNome()%></td>
					<td><%=jb.getFone()%></td>
					<td><%=jb.getEmail()%></td>
					<td>
						<a href="select?idcon=<%=jb.getIdcon()%>" class="botao1">Editar</a>
						<a href="javascript: confirmar(<%=jb.getIdcon()%>)" class="botao2">Excluir</a>
					</td>
				</tr>
			<%}%>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>