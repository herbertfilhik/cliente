<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Lista de Clientes Cadastrados</title>
</head>
<body>
	<h2>Lista de Clientes Cadastrados</h2>

	<c:if test="${not empty clientes}">
		<table>
			<tr>
				<td>Nome</td>
				<td>Nome do Filme</td>
				<td>CPF</td>
				<td>Telefone</td>
				<td>Endere�o</td>
				<td>Descri��o</td>
				<td>Profiss�o</td>
				<td>RG</td>
				<td>Sal�rio</td>
				<td>Data de Nascimento</td>
				<td>Data de Lan�amento</td>
			</tr>


			<c:forEach var="listValue" items="${clientes}">

				<tr>
					<td>${listValue.nome}</td>
					<td>${listValue.nomeFilme}</td>
					<td>${listValue.cpf}</td>
					<td>${listValue.telefone}</td>
					<td>${listValue.endereco}</td>
					<td>${listValue.descricao}</td>
					<td>${listValue.profissao}</td>
					<td>${listValue.rg}</td>
					<td>${listValue.salario}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" value="${listValue.dataNascimento}" /></td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" value="${listValue.dataLancamento}" /></td>
				</tr>
			</c:forEach>

		</table>

	</c:if>
	<a href="/spring-webmvc/index">Cadastro</a>

</body>
</html>