<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Not�cia</title>
</head>
<body>
	<img alt="" src="https://png.pngtree.com/thumb_back/fw800/back_pic/03/89/91/4157daaf5291cad.jpg">
	<hr>
	<form action="NoticiaServlet" method="post">
	<input type="hidden" name="codigo" value="${noticia.id}"> 
	<input type="hidden" name="opcao" value="editar"> 
		Titulo: <input type="text" name="titulo" value="${noticia.titulo}"> <br>
		<br> Texto: <input name="texto" value="${noticia.texto}">
		 <br> <input type="submit" value="ok" style="border-radius: 100%">
	</form>
</body>
</html>