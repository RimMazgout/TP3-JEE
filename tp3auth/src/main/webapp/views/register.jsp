<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/static/style.css">
</head>
<body>
    <div class="page-container">
        <div class="card">
            <h2>Inscription</h2>

            <form action="<%= request.getContextPath() %>/RegisterServlet" method="post">
                <label>Nom d'utilisateur</label>
                <input type="text" name="username" required>

                <label>Mot de passe</label>
                <input type="password" name="password" required>

                <input type="submit" value="S'inscrire">
            </form>

            <p class="success-msg">${message}</p>

            <a class="link" href="<%= request.getContextPath() %>/views/login.jsp">Retour à la connexion</a>
        </div>
    </div>
</body>
</html>