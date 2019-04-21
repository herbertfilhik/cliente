<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Cadastro de Cliente</title>
</head>
<body>
	<h2>Formulário de Cadastro de Cliente</h2>
	<h3>Formulário de Cadastro do Diretor e do Filme</h3>
	<form method="POST" action="/addCliente">
		<table>
			<tr>
				<td><label path="nome">Nome:</label></td>
				<td><input name="nome" required="required" /></td>
			</tr>
			<tr>
				<td><label path="nomeFilme">Nome do Filme:</label></td>
				<td><input name="nomeFilme" required="required" /></td>
			</tr>
			<tr>
				<td><label path="cpf">CPF:</label></td>
				<td><input name="cpf" pattern="([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})" required="required" /></td>
			</tr>
			<tr>
				<td><label path="rg">RG:</label></td>
				<td><input name="rg" pattern="(^(\d{2}\x2E\d{3}\x2E\d{3}[-]\d{1})$|^(\d{2}\x2E\d{3}\x2E\d{3})$)" required="required" /></td>
			</tr>
			<tr>
				<td><label path="endereco">Endereço:</label></td>
				<td><textarea name="endereco" required="required"></textarea></td>
			</tr>
			<tr>
				<td><label path="salario">Salário:</label></td>
				<td><input name="salario" required="required" /></td>
			</tr>
			<tr>
				<td><label path="telefone">Telefone: +99(99)9999-9999</label></td>
				<td><input name="telefone" pattern="^(?:\+)[0-9]{2}\s?(?:\()[0-9]{2}(?:\))\s?[0-9]{4,5}(?:-)[0-9]{4}$" required="required" /></td>
			</tr>
			<tr>
				<td><label path="profissao">Profissão:</label></td>
				<td><input name="profissao" required="required" /></td>
			</tr>
			<tr>
				<td><label path="descricao">Descrição</label></td>
				<td><input name="descricao" required="required" /></td>
			</tr>
			<tr>
				<td><label path="dataNascimento">Data de Nascimento: dd/mm/aaaa</label></td>
				<fmt:formatDate value="${dtnasc}" pattern="dd/MM/yyyy" var="dataNascimento" />
				<td><input id="dtnasc" name="dataNascimento" required="required" /></td>
			<tr>
			</tr>
				<td><label path="dataLancamento">Data de Lançamento: dd/mm/aaaa</label></td>
				<td><input name="dataLancamento" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" required="required" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>
	<a href="/listaClientes">Lista</a>
</body>
</html>