<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 12.09.2022
  Time: 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<button onclick="AddItem()">Добавить</button>
<form action="/">
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
<div class="item-info">
    <table>
        <tr>
            <td>Номер</td>
            <td>Фото</td>
            <td>Материал</td>
            <td>Цвет</td>
            <td>Цена</td>
            <td>Изменение</td>
            <td>Удаление</td>
        </tr>
        <div class="item-1">
            <tr>
                <td>1</td>
                <td>
                    <div class="item-image-1">
                        <img src="image/item6.jpg" alt="shop">
                    </div>
                </td>
                <td><p class="item-data">эластичная сетка</p></td>

                <td>
                    <p class="item-data-1">
                        <input id="input-color-1" type="hidden" name="item-color" value="white">
                    <div id="item-color-1" class="item-color" data-title="белый" value="white"></div>
                    </p>
                </td>

                <td><p class="item-data">85 б.р</p></td>

                <td>
                    <button>Изменить</button>
                </td>
                <td>
                    <button>Удалить</button>
                </td>
            </tr>
        </div>
    </table>
</div>
<script src="script.js" type="text/javascript"></script>
</body>
</html>
