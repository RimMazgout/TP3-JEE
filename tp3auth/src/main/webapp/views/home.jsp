<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/style.css">
</head>
<body>
    <div class="page-container">
        <div class="card home-box">
            <h2>Bienvenue dans l'espace sécurisé</h2>
            <p>Vous êtes connecté avec succès.</p>

            <a class="logout-btn" href="<%= request.getContextPath() %>/LogoutServlet">Se déconnecter</a>
        </div>
    </div>
</body>
</html>