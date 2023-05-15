<html>
<head>
<meta charset="ISO-8859-1">
<title>Counter page</title>
</head>
<body>
<p> On repére le bean par le nom nomBean<br>

<jsp:useBean id="nomBean" class="Beans.SimpleBean" 
scope="session"></jsp:useBean>
<p> On accede au compteur avec la methode getCompteur:
<br> compteur = <%= nomBean.getCompteur() %>
<hr>
On incrémente le compteur avec la methode increment <% nomBean.increment(); %>
<p> On peut accéder à la propriété par la balise getProperty:<br>
<jsp:getProperty name="nomBean" property="compteur" />


</body>

</html>