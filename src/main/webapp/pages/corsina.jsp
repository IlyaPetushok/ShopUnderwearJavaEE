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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/front/image/logotip.jpg">
</head>
<body>
<header id="header" class="header">
    <div class="container">
        <h2>HotMeBy</h2>
        <ul class="menu">
            <li><a class="header-item" href="<%=request.getContextPath()%>/hotMeBy.by#head">Главная</a></li>
            <li><a class="header-item" href="<%=request.getContextPath()%>/hotMeBy.by#info">Информация</a></li>
            <li><a class="header-item" href="<%=request.getContextPath()%>/hotMeBy.by#shop">Магазин</a></li>
        </ul>
        <button class="menu-button-burger">
            <img onclick="showBlockBurger()" src="<%=request.getContextPath()%>/front/image/burger.jpg" alt="burger">
        </button>
    </div>
</header>
<div id="menu-burger" class="menu-burger">
    <ul>
        <li><a  class="menu-item-burger" href="<%=request.getContextPath()%>/hotMeBy.by#head">Главная</a></li>
        <li><a  class="menu-item-berger" href="<%=request.getContextPath()%>/hotMeBy.by#info">Информация</a></li>
        <li><a  class="menu-item-burger" href="<%=request.getContextPath()%>/hotMeBy.by#shop">Магазин</a></li>
    </ul>
</div>
<section id="shop" class="items-corsina-order">
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
                    <div class="info-item-and-button">
                        <div class="item-data">

                            <div class="item-info-material">
                                <div><p>Материал</p></div>
                                <div><p>${item.getMaterial()}</p></div>
                            </div>

                            <div class="item-info-color">
                                <div>
                                    <p>Цвет</p>
                                </div>

                                <div class="item-color">
                                    <p class="shop-item-data">
                                        <input id="shop-input-color-${item.getId()}" type="hidden" name="item-color"
                                               value="${item.getColor()}">
                                    <div id="item-color-${item.getId()}" class="shop-item-color" data-title="Чёрный"
                                         value="white"></div>
                                    </p>
                                </div>

                            </div>
                            <div class="item-info-quantity">
                                <div class="quantity-item">
                                    <button onclick="priceAdd(${item.getId()})">+</button>

                                    <label>
                                        <input id="button-quantity-${item.getId()}" type="text" name="quantity"
                                               value="1">
                                    </label>

                                    <button onclick="priceDeduct(${item.getId()})">-</button>
                                </div>
                                <div class="item-info-price">
                                    <input id="priceNow-${item.getId()}" type="hidden" value="${item.getPrice()}">
                                    <input id="price-${item.getId()}" type="hidden" name="price"
                                           value="${item.getPrice()}">
                                    <div id="price" class="price">
                                        <label id="price-for-quantity-${item.getId()}"
                                               class="item-price">${item.getPrice()}</label>
                                        <p>б.р</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item-button">
                            <div>
                                <button>Удалить</button>
                            </div>
                            <div class="button-corsina" id="button_by">
                                <button>Купить</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div id="items-all-corsina" class="items-all-corsina">
        <h1>Корзина <img src="<%=request.getContextPath()%>/front/image/corsina-black.png" alt=""></h1>
        <div class="items-all-corsina-info">
            <div class="corsina-info">
                <div>
                    <h2>Итоговая сумма</h2>
                </div>
                <div>
                    <div class="price"><p id="price-all-corsina" class="price-all-corsina">0</p>
                        <label class="price-all-corsina">б.р</label>
                    </div>
                </div>
            </div>
            <div class="corsina-info">
                <div>
                    <p>Кол-во товаров</p>
                </div>
                <div>
                    <label id="quantity-all-corsina" class="quantity-all-corsina">0</label>
                </div>
            </div>
        </div>
        <p class="corsina-button">
            <button onclick="showFormUser()">Заказать</button>
        </p>
    </div>
</section>
<%--<--%>
<%--</div>--%>
            <div id="user-info" class="user-info">
                <button>
                    <img src="<%=request.getContextPath()%>/front/image/crosExit.png" alt="exit"
                         onclick="showFormUser()">
                </button>
                <h2>Оформление заказа</h2>
                <form action="<%=request.getContextPath()%>/hotMeBy.by">
                    <input id="byItems" type="hidden" name="item">
                    <input type="hidden" name="command" value="create_order_command">
                    <input type="text" name="name" placeholder="ФИО">
                    <input type="text" name="post" placeholder="Отделение почты">
                    <input type="text" name="telephone" placeholder="Номер телефона">
                    <input type="submit" value="Отправить">
                </form>
            </div>
<%--</section>--%>
<footer id="footer">
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
