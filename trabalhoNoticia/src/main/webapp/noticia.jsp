<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${noticia.titulo} </title>
<style type="text/css">
	ul {
	float: right;
		display: inline-block;
		list-style-type: none;
	}

 	ul li {
 		display: inline;
 		padding: 10px;
 	}
 	
 	td{
 		padding: 10px;
 		background-color: #eee;
 	}
 	
 	th{
 		font-size: 24px;
 		background-color: #ddd;
 	}
 	
 	label{
 		margin-right: 20px;
 	}
 	
  </style>
</head>
<body>
	<ul>
	<li><a href="NoticiaServlet?opcao=listar">voltar a lista</a></li>
	<li><a href="NoticiaServlet?opcao=editar&codigo=${noticia.id} "  >editar</a></li>
	<li><a href="NoticiaServlet?opcao=excluir&codigo=${noticia.id}" >excluir</a></li>
	</ul>
	<br>
	<h1>${noticia.titulo}</h1>
	<p>${noticia.texto}</p>
	<br>
	<hr>
    <h3>Comentarios</h3>
    <br>
    <table>
		<tr>
			<th>Autor</th>
			<th>Texto</th>
		</tr>
		<c:forEach var="comentario" items="${comentarios}">
		<tr>
			<td><b>${comentario.autor}</b></td>
			<td>${comentario.texto}</td>  
		</tr>	
		</c:forEach>
	</table>
	<br>
	<br>
	<hr>
	<form action="ComentarioServlet" method="post">
	<input type="hidden" value="${noticia.id}" name="id">
		<label class= autor>Autor:</label>
		 <input type="text" name="autor">
		 <br>
   		<br> 
   		<label>Comentario:</label> 
    	<textarea name="texto"></textarea> 
		<input type="submit" value="ok" style="border-radius: 100%">
	</form>
</body>
</html>