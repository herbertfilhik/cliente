<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Cadastro de Cliente</title>
</head>
<body>

	<h2>Formul�rio de Cadastro de Cliente</h2>
	<h3>Formul�rio de Cadastro do Diretor e do Filme</h3>
	<form:form method="POST" action="/spring-webmvc/addCliente">
		<table>
			<tr>
				<td><form:label path="nome">Nome:</form:label></td>
				<td><form:input path="nome" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="nomeFilme">Nome do Filme:</form:label></td>
				<td><form:input path="nomeFilme" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="cpf">CPF:</form:label></td>
				<td><form:input path="cpf" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="rg">RG:</form:label></td>
				<td><form:input path="rg" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="endereco">Endere�o:</form:label></td>
				<td><form:textarea path="endereco" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="salario">Sal�rio:</form:label></td>
				<td><form:input path="salario" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="telefone">Telefone:</form:label></td>
				<td><form:textarea path="telefone" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="profissao">Profiss�o:</form:label></td>
				<td><form:textarea path="profissao" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="descricao">Descri��o</form:label></td>
				<td><form:textarea path="descricao" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="dataNascimento">Data de Nascimento:</form:label></td>
				<td><form:input path="dataNascimento" required="required" /></td>
			</tr>
			<tr>
				<td><form:label path="dataLancamento">Data de Lan�amento:</form:label></td>
				<td><form:input path="dataLancamento" required="required" /></td>
			</tr>			
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	<a href="/spring-webmvc/listaClientes">Lista</a>

</body>
</html>