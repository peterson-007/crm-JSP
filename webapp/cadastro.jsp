<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sistema CRM</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h3>CRM/WEB - Cadastro de Clientes</h3>
		<%@include file="navbar.jsp"%>
		<br>
		
		<form action="cadastrar" method="post" class="CadastrarClienteFormulario">
		
		<p style="color:red"><% String mensagem = (String) request.getAttribute("mensagem");
		if(mensagem != null){
			out.println(mensagem);
		}		
		%> </p>
		
		<div class="mb-3">
			<label for="nomeFormControlInput1" class="form-label">Nome</label> <input
				type="text" class="form-control" id="nomeFormControlInput1"
				name="nome" placeholder="Nome Completo">
		</div>
		<div class="mb-3">
			<label for="cpfFormControlInput1" class="form-label">CPF</label> <input
				type="text" class="form-control" id="cpfFormControlInput1"
				name="cpf" placeholder="CPF">
		</div>
		<div class="mb-3">
			<label for="emailFormControlInput1" class="form-label">Email</label>
			<input type="email" class="form-control" id="emailFormControlInput1"
				name="email" placeholder="exemplo@email.com.br">
		</div>
		<div class="mb-3">
			<label for="telefoneFormControlInput1" class="form-label">Telefone</label>
			<input type="text" class="form-control"
				id="telefoneFormControlInput1" name="telefone"
				placeholder="Telefone">
		</div>
		<div class="mb-3">
			<label for="dataFormControlInput1" class="form-label">Data de
				Nascimento</label> <input type="text" class="form-control"
				id="dataFormControlInput1" name="dataNascimento"
				placeholder="Data de Nascimento">
		</div>
		
		<label>Gênero</label>
		<div class="form-check">		
			<input class="form-check-input" name="masculino-check" type="checkbox" value=""
				id="flexCheckDefault"> <label class="form-check-label"
				for="flexCheckDefault">Masculino </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" name="feminino-check" type="checkbox" value=""
				id="flexCheckChecked"> <label
				class="form-check-label" for="flexCheckChecked">Feminino </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" name="nenhum-check" type="checkbox" value=""
				id="flexCheckChecked"> <label
				class="form-check-label" for="flexCheckChecked">Não Declarar</label>
		</div>
		<div class="mb-3">
			<label for="enderecoFormControlInput1" class="form-label">Endereço</label>
			<input type="text" class="form-control"
				id="enderecoFormControlInput1" name="endereco"
				placeholder="Endereço">
		</div>		
		<button class="btn btn-primary" type="submit">Salvar</button>
	</form>
	
	</div>

</body>
</html>