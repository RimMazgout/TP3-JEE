<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/style.css">
</head>
<body>
    <div class="page-container">
        <div class="card">
            <h2>Connexion</h2>

            <form action="<%= request.getContextPath() %>/LoginServlet" method="post">
                <label>Nom d'utilisateur</label>
                <input type="text" name="username" required>

                <label>Mot de passe</label>
                <input type="password" name="password" required>

                <input type="submit" value="Se connecter">
            </form>

            <p class="error-msg">${error}</p>

            <a class="link" href="<%= request.getContextPath() %>/views/register.jsp">Créer un compte</a>
        </div>
    </div>
</body>
</html>