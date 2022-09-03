<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        <%@include file="/front/admin/style.css"%>
    </style>
</head>
<body>
<div class="admin-form">
    <form action="adminHotMeBy" method="post">
        <h2>Admin</h2>
        <input type="hidden" name="command" value="admin_input_command">
        <input class="info" type="text" name="login" placeholder="login" required>
        <br>
        <input class="info" type="password" name="password" placeholder="password" required>
        <br>
        <input class="button" type="submit" value="Войти">
        <p>
            Если вы не являетесь админов данного сайто,<br>просьба покинуть его.
        </p>
    </form>
</div>

</body>
</html>

</html>