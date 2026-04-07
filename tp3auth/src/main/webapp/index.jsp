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
            <h2>Bienvenue</h2>
            <p>Accéder à l'application d'authentification</p>

            <a class="logout-btn" style="background:#2563eb;" href="<%= request.getContextPath() %>/views/login.jsp">
                Aller à la connexion
            </a>
        </div>
    </div>
</body>
</html>