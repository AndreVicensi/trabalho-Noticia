<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${noticia.titulo} </title>
</head>
<body>
	<h1>${noticia.titulo}</h1>
	<p>${noticia.texto}</p>
	<a href="NoticiaServlet?opcao=editar&codigo=${noticia.id}" style="float: right">editar</a>
	<br>
	<a href="NoticiaServlet?opcao=excluir&codigo=${noticia.id}" style="float: right">excluir</a>
	<br>
	<hr>
    <h3>Comentarios</h3>

			Autor: ${noticia.comentario.autor}
			<br>
			Comentario: ${noticia.comentario.texto}

	<br>
	<br>
	<hr>
	<form action="ComentarioServlet" method="post">
	<input type="hidden" value="${noticia.id}" name="id">
		Autor: <input type="text" name="autor">
		<br>
   <br> Comentario: <textarea name="texto"></textarea> 
			<input type="submit" value="ok" style="border-radius: 100%">
	</form>
	
	

</body>
</html>