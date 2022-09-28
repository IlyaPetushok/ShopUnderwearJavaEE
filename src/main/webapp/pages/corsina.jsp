<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 11.09.2022
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HotMeBy</title>
    <link rel="icon" href="logotip.jpg">
    <style>
        <%@include file="/front/corsina/style.css"%>
    </style>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/front/image/logotip.jpg">
</head>
<body>
<header class="header">
    <div class="container">
        <h2>HotMeBy</h2>
        <ul class="menu">
            <li><a class="header-item" href="">Главная</a></li>
            <li><a class="header-item" href="">Информация</a></li>
            <li><a class="header-item" href="">Магазин</a></li>
        </ul>
    </div>
</header>
<section class="items-corsina">
    <div class="container-for-item">
        <div class="shop-items">
            <input id="quantity" type="hidden" name="quantity" value="${quantity}">
            <c:forEach var="item" items="${items}">
                <div class="item-corsina">
                    <div class="item-corsina-img">
                        <img src="${item.getPhotoUrl()}" alt="">
                    </div>
                    <!--            цена ,назв ,материал ,цвет ,кнопка удалить и
                                    мб количество -->
                    <div class="item-info">
                        <h2>${item.getName()}</h2>
                        <table class="item-table-info">
                            <tr>
                                <td>Материал:</td>
                                <td>${item.getMaterial()}</td>
                            </tr>
                            <tr>
                                <td>Цвет:</td>
                                <td>
                                    <p class="shop-item-data">
                                        <input id="shop-input-color-${item.getId()}" type="hidden" name="item-color" value="${item.getColor()}">
                                    <div id="item-color-${item.getId()}" class="shop-item-color" data-title="Чёрный"
                                         value="white"></div>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="quantity-item">
                                        <button onclick="priceAdd(${item.getId()})">+</button>

                                        <label>
                                            <input id="button-quantity-${item.getId()}" type="text" name="quantity" value="1">
                                        </label>

                                        <button onclick="priceDeduct(${item.getId()})">-</button>
                                    </div>
                                </td>
                                <td>
                                    <input id="priceNow-${item.getId()}" type="hidden" value="${item.getPrice()}">
                                    <input id="price-${item.getId()}" type="hidden" name="price" value="${item.getPrice()}">
                                    <div class="price">
                                        <label id="price-for-quantity-${item.getId()}" class="item-price">${item.getPrice()}</label>
                                        <p>б.р</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="button-option-item">
                        <button>Удалить</button>
                        <button>Купить</button>
                    </div>
                </div>
            </c:forEach>

        </div>
        <div class="items-all-corsina">
            <h1>Корзина <img src="<%=request.getContextPath()%>/front/image/corsina-black.png" alt=""></h1>
            <table>
                <tr>
                    <td><h2>Итого</h2></td>
                    <td>
                        <div class="price"><p id="price-all-corsina" class="price-all-corsina">0</p>
                            <label class="price-all-corsina">б.р</label>
                        </div>
                    </td>
                </tr>
                <tr class="quantity-all-corsina">
                    <td><p>Товары кол-во</p></td>
                    <td><label id="quantity-all-corsina" class="quantity-all-corsina">0</label></td>
                </tr>
            </table>
            <p class="corsina-button">
                <button>Заказать</button>
            </p>
        </div>
    </div>
    <div class="user-info">
        <button>
            <img src="shop-item/images.png" alt="exit">
        </button>
        <h2>Оформление заказа</h2>
        <form action="">
            <input type="text" name="name" placeholder="ФИО">
            <input type="text" name="post" placeholder="Отделение почты">
            <input type="text" name="telephone" placeholder="Номер телефона">
            <input type="submit" value="Отправить">
        </form>
    </div>
</section>
<footer>
    <div class="container">
        <h2>HotMeBy</h2>
        <p>© 2022 ООО «HotMeBy». HotMeBy — магазин женского белья. Заказы online принимаются круглосуточно и без
            выходных.
            сервиса</p>
    </div>
</footer>
<script type="text/javascript" charset="utf-8">
    <%@include file="/front/corsina/script.js"%>
</script>
</body>
</html>
