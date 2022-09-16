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
        <img src="/adminInput/image/images.png" alt="Закрыть" onclick="AddItem()">
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
<form action="/">
    <div id="change" class="change">
        <img src="/adminInput/image/images.png" alt="Закрыть" onclick="changeItem(0)">
        <!--        </button>-->
        <h2>Измениние данных</h2>

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
<%--<c:forEach var="item" items="${items}">--%>
<%--    <p><c:out value="${item.name}" /></p>--%>
<%--</c:forEach>--%>
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
                        <input class="item-button" type="submit" value="Изменить" onclick="changeItem(1)">
                    </td>

                    <td>
                        <input class="item-button" type="submit" value="Удалить">
                    </td>
                </tr>
            </div>
        </c:forEach>
        <div class="item">
            <tr>
                <td><p class="number">1</p></td>
                <td><p class="name" id="name-1">Blood Revenge</p></td>
                <td>
                    <div class="item-image">
                        <img id="photo-1" src="<%=request.getContextPath()%>/front/image/shop-item/item2.jpg" alt="shop">
                    </div>
                </td>
                <td><p class="item-data" id="material-1">эластичная сетка</p></td>

                <td>
                    <p class="item-data">
                        <input id="input-color-1" type="hidden" name="item-color" value="#B25353">
                    <div id="item-color-1" class="item-color" value="white"></div>
                    </p>
                </td>

                <td class="item-price"><p class="item-data" id="price-1">85</p>
                    <p class="item-data">б.р</p></td>

                <td>
                    <input class="item-button" type="submit" value="Изменить" onclick="changeItem(1)">
                </td>

                <td>
                    <input class="item-button" type="submit" value="Удалить">
                </td>
            </tr>
        </div>

<%--        <div class="item">--%>
<%--            <tr>--%>
<%--                <td><p class="number">2</p></td>--%>
<%--                <td><p class="name" id="name-2">Blood Revenge</p></td>--%>
<%--                <td>--%>
<%--                    <div class="item-image">--%>
<%--                        <img id="photo-2" src="<%=request.getContextPath()%>/front/image/shop-item/item1.jpg" alt="shop">--%>
<%--                    </div>--%>
<%--                </td>--%>
<%--                <td><p class="item-data" id="material-2">эластичная сетка</p></td>--%>

<%--                <td>--%>
<%--                    <p class="item-data">--%>
<%--                        <input id="input-color-2" type="hidden" name="item-color" value="#ffffff">--%>
<%--                    <div id="item-color-2" class="item-color" value="white"></div>--%>
<%--                    </p>--%>
<%--                </td>--%>

<%--                <td class="item-price"><p class="item-data" id="price-2">125</p>--%>
<%--                    <p class="item-data">б.р</p></td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Изменить" onclick="changeItem(2)">--%>
<%--                </td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Удалить">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <tr>--%>
<%--                <td><p class="number">3</p></td>--%>
<%--                <td><p class="name" id="name-3">Blood Revenge</p></td>--%>
<%--                <td>--%>
<%--                    <div class="item-image">--%>
<%--                        <img id="photo-3" src="<%=request.getContextPath()%>/front/image/shop-item/item3.jpg" alt="shop">--%>
<%--                    </div>--%>
<%--                </td>--%>
<%--                <td><p class="item-data" id="material-3">эластичная сетка</p></td>--%>

<%--                <td>--%>
<%--                    <p class="item-data">--%>
<%--                        <input id="input-color-3" type="hidden" name="item-color" value="#46392A">--%>
<%--                    <div id="item-color-3" class="item-color" value="white"></div>--%>
<%--                    </p>--%>
<%--                </td>--%>

<%--                <td class="item-price"><p class="item-data" id="price-3">109</p>--%>
<%--                    <p class="item-data">б.р</p></td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Изменить" onclick="changeItem(3)">--%>
<%--                </td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Удалить">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </div>--%>
<%--        <div class="item">--%>
<%--            <tr>--%>
<%--                <td><p class="number">4</p></td>--%>
<%--                <td><p class="name" id="name-4">Blood Revenge</p></td>--%>
<%--                <td>--%>
<%--                    <div class="item-image">--%>
<%--                        <img id="photo-4" src="<%=request.getContextPath()%>/front/image/shop-item/item4.jpg" alt="shop">--%>
<%--                    </div>--%>
<%--                </td>--%>
<%--                <td><p class="item-data" id="material-4">эластичная сетка</p></td>--%>

<%--                <td>--%>
<%--                    <p class="item-data">--%>
<%--                        <input id="input-color-4" type="hidden" name="item-color" value="#2D2023">--%>
<%--                    <div id="item-color-4" class="item-color" value="white"></div>--%>
<%--                    </p>--%>
<%--                </td>--%>

<%--                <td class="item-price"><p class="item-data" id="price-4">85</p>--%>
<%--                    <p class="item-data">б.р</p></td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Изменить" onclick="changeItem(4)">--%>
<%--                </td>--%>

<%--                <td>--%>
<%--                    <input class="item-button" type="submit" value="Удалить">--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </div>--%>
    </table>
</div>

<script type="text/javascript" charset="utf-8">
    <%@include file="/front/adminInput/script.js"%>
</script>
</body>
</html>
