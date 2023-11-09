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
		<h2>CRM/WEB - Lista de Clientes</h2>
		<%@include file="navbar.jsp"%>
		<p style="color:blue"><% String mensagem = (String) request.getAttribute("mensagem");
		if(mensagem != null){
			out.println(mensagem);
		}		
		%></p>
		
		<div class="mb-3">
			<label for="nomeFormControlInput1" class="form-label">Nome: </label>
			<br>
			<%
				String nome = (String) request.getAttribute("nome");
					if(nome != null){
						out.println(nome);
					}
			%> 
		</div>
		<div class="mb-3">
			<label for="cpfFormControlInput1" class="form-label">CPF: </label>
			<br>
			<%
				String cpf = (String) request.getAttribute("cpf");
					if(nome != null){
						out.println(cpf);
					}
			%>  
		</div>
		<div class="mb-3">
			<label for="emailFormControlInput1" class="form-label">Email: </label>
			<br>
			<%
				String email = (String) request.getAttribute("email");
					if(nome != null){
						out.println(email);
					}
			%> 			
		</div>
		<div class="mb-3">
			<label for="telefoneFormControlInput1" class="form-label">Telefone: </label>
			<br>
			<%
				String telefone = (String) request.getAttribute("telefone");
					if(nome != null){
						out.println(telefone);
					}
			%> 
		</div>
		<div class="mb-3">
			<label for="dataFormControlInput1" class="form-label">Data de Nascimento: </label>
			<br>
			<%
				String dataNascimento = (String) request.getAttribute("dataNascimento");
					if(nome != null){
						out.println(dataNascimento);
					}
			%>  
		</div>
		<div class="mb-3">
			<label for="dataFormControlInput1" class="form-label">Gênero: </label>
			<br>
			<%
				String genero = (String) request.getAttribute("genero");
					if(nome != null){
						out.println(genero);
					}
			%>  
		</div>		
		<div class="mb-3">
			<label for="enderecoFormControlInput1" class="form-label">Endereço </label>
			<br>
			<%
				String endereco = (String) request.getAttribute("endereco");
					if(nome != null){
						out.println(endereco);
					}
			%> 
			
		</div>		
		
	</div>
</body>
</html>