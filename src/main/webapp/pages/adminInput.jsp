<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 12.09.2022
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <style>
        <%@include file="/front/adminInput/style.css"%>
    </style>
<%--    <link rel="stylesheet" href="style.css">--%>
</head>
<body>

<button class="item-button-add" onclick="AddItem()">+</button>

<form action="<%=request.getContextPath()%>/pages/adminHotMeBy" method="post">
    <input type="hidden" name="command" value="admin_add_item">
    <div class="add-item" id="add-item">
        <!--        <button>-->
        <img src="<%=request.getContextPath()%>/front/image/crosExit.png" alt="Закрыть" onclick="AddItem()">
        <!--        </button>-->
        <h2>Добавление продукта</h2>

        <div class="input-data">
            <label>Ссылка на картинку</label>
            <input type="text" name="photoUrl">
        </div>

        <div class="input-data">
            <label>Название продукта</label>
            <input type="text" name="nameItem">
        </div>

        <div class="input-data">
            <label>Цвет</label>
            <input type="color" name="colorItem">
        </div>
        <div class="input-data">
            <label>Цена</label>
            <input type="text" name="price">
        </div>

        <div class="input-data">
            <label>Материал</label>
            <input type="text" name="material">
        </div>
        <div class="addInput">
            <input class="addInput" type="submit" value="Добавить">
        </div>
    </div>
</form>
<form action="<%=request.getContextPath()%>/pages/adminHotMeBy" method="post">
    <input type="hidden" name="command" value="admin_change_item">
    <div id="change" class="change">
        <img src="<%=request.getContextPath()%>/front/image/crosExit.png" alt="Закрыть" onclick="changeItem(0)">
        <!--        </button>-->
        <h2>Измениние данных</h2>

        <input id="idItemForChange" type="hidden" name="idItemForChange">

        <div class="changeInput">
            <label>Ссылка на картинку</label>
            <input id="changePhoto" type="text" name="photoUrl">
        </div>

        <div class="changeInput">
            <label>Название продукта</label>
            <input id="changeName" type="text" name="nameItem">
        </div>

        <div class="changeInput">
            <label>Цвет</label>
            <input id="changeColor" type="color" name="colorItem">
        </div>
        <div class="changeInput">
            <label>Цена</label>
            <input id="changePrice" type="text" name="price">
        </div>

        <div class="changeInput">
            <label>Материал</label>
            <input id="changeMaterial" type="text" name="material">
        </div>
        <div class="changeButton">
            <input class="changeButton" type="submit" value="Сохранить">
        </div>
    </div>
</form>
<div class="item-info">
    <table>
        <tr class="name-td">
            <td>Номер</td>
            <td>Название</td>
            <td>Фото</td>
            <td>Материал</td>
            <td>Цвет</td>
            <td>Цена</td>
            <td colspan="2">
                <center>Функция</center>
            </td>
        </tr>
        <c:forEach var="item" items="${items}">
            <div class="item">
                <tr>
                    <td><p class="number">${item.getId()}</p></td>
                    <td><p class="name" id="name-${item.getId()}">${item.getName()}</p></td>
                    <td>
                        <div class="item-image">
                            <img id="photo-${item.getId()}" src="${item.getPhotoUrl()}" alt="shop">
                        </div>
                    </td>
                    <td><p class="item-data" id="material-${item.getId()}">${item.getMaterial()}</p></td>

                    <td>
                        <p class="item-data">
                            <input id="input-color-${item.getId()}" type="hidden" name="item-color" value="${item.getColor()}">
                        <div id="item-color-${item.getId()}" class="item-color" ></div>
                        </p>
                    </td>

                    <td class="item-price"><p class="item-data" id="price-${item.getId()}">${item.getPrice()}</p>
                        <p class="item-data">б.р</p></td>

                    <td>
                        <input class="item-button" type="submit" value="Изменить" onclick="changeItem(${item.getId()})">
                    </td>

                    <td>
                        <form action="<%=request.getContextPath()%>/pages/adminHotMeBy" method="post">
                            <input type="hidden" name="command" value="admin_delete_item">
                            <input type="hidden" name="idItem" value="${item.getId()}">
                            <input class="item-button" type="submit" value="Удалить">
                        </form>
                    </td>
                </tr>
            </div>
        </c:forEach>
    </table>
</div>

<script type="text/javascript" charset="utf-8">
    <%@include file="/front/adminInput/script.js"%>
</script>
</body>
</html>
