<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="nomdupackage.ContactBean" %>
<%@ page import="nomdupackage.Contact" %>

<%
// Création d'un objet ContactBean
ContactBean contactBean = new ContactBean();

// Récupération de l'ID du contact à afficher (passé en paramètre dans l'URL)
int idContact = Integer.parseInt(request.getParameter("id"));

// Chargement du contact correspondant à l'ID
Contact contact = contactBean.loadContact(idContact);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page de détail du contact</title>
</head>
<body>
<h1>Détails du contact</h1>
<%
if (contact != null) {
%>
  <p>nom : <%= contact.getNom() %></p>
  <p>Prénom : <%= contact.getPrenom() %></p>
  <p>Email : <%= contact.getEmail() %></p>
<%
} else {
%>
  <p>Le contact demandé n'a pas été trouvé.</p>
<%
}
%>
</body>
</html>