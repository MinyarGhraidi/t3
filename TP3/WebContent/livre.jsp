<jsp:useBean id="monLivre" class="beans.livre" scope="page"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livre Bean</title>
</head>
<body>
<b>Avant modification du JavaBean</b><br>
Le titre du livre est: <jsp:getProperty property="titre" name="monLivre"/><br>
Le nom de son auteur est :<jsp:getProperty property="auteur" name="monLivre"/>
<p>
<jsp:setProperty property="auteur" name="monLivre" value="Gustave Flaubert"/>
<jsp:setProperty property="titre" name="monLivre" value="Madame Bovary"/>
<b>Apres modificatioon du JvaBean</b><br>
Le titre du livre est: <jsp:getProperty property="titre" name="monLivre"/>
<br>
Le nom de son auteur est: <jsp:getProperty property="auteur" name="monLivre"/>
</body>
</html>