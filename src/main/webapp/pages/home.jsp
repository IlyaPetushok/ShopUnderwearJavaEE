<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HotMeBy</title>
    <style>
        <%@include file="/front/home/style.css" %>
    </style>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/front/image/logotip.jpg">
</head>
<body>
<header>
    <div class="container">
        <h2>HotMeBy</h2>
        <ul class="menu">
            <li><a onclick="SmoothHeader('head')" class="menu-item">Главная</a></li>
            <li><a onclick="SmoothHeader('info')" class="menu-item">Информация</a></li>
            <li><a onclick="SmoothHeader('shop')" class="menu-item">Магазин</a></li>
        </ul>
        <form action="<%=request.getContextPath()%>/hotMeBy.by" method="get">
            <input type="hidden" name="command" value="input_corsina">
            <input id="indexes" type="hidden" name="indexes">
            <button>
                <img class="corsina" src="<%=request.getContextPath()%>/front/image/corsina.jpg" alt="корзина">
            </button>
        </form>
        <div id="menu-item-quantity" class="menu-item-quantity">0</div>
    </div>
</header>
<section id="head" class="main">
    <div class="container">
        <img src="<%=request.getContextPath()%>/front/image/mainPhoto.png" alt="hotmeby" class="main-image">
        <div class="main-text">

            <p>Хотите всегда чувствовать себя восхитительной и желанной?</p>

            <!--            <div class="main-space"></div>-->

            <p>С нашим магазином нижнего и эротического белья и аксессуаров это просто! Вы сможете подобрать себе не
                только
                идеальное белье на каждый день, но и создать обворожительный образ, который заставит сердце биться чаще
                и
                покорит любого мужчину. В таком наряде вы будете ощущать себя сексуальной, неотразимой и уверенной в
                себе.</p>
            <!--            <div class="main-space"></div>-->

            <p>Наша главная задача – создать красоту на вашем теле, позволить вам быть смелыми, чувственными и
                реализовать
                самые сокровенные фантазии. Добавьте в вашу жизнь немного страсти, игры и веселья в таком
                соблазнительном
                белье от HotMeBy!</p>
        </div>
    </div>
</section>
<section id="info" class="info">
    <div class="container">
        <table>
            <tr>
                <td><img src="<%=request.getContextPath()%>/front/image/infoImage1.jpg" alt="info"></td>
                <td>
                    <p>
                        Наши изделия соответствуют самым высоким стандартам качества и создаются специально для девушек,
                        учитывая все тонкости и нюансы.

                        Большой выбор белья в нашем интернет-магазине обязательно произведёт большое впечатление.
                        Практичная
                        и комфортная базовая коллекция на каждый день, кружевные комплекты для особых случаев,
                        современные
                        модели удобного белья незаметные под любой одеждой - у нас есть всё.

                        Уникальная Программа лояльности <span>HotMeBy</span> – еще одна причина стать нашим постоянным
                        клиентом.
                    </p>
                </td>
            </tr>
            <tr>
                <td><img src="<%=request.getContextPath()%>/front/image/infoImage2.jpg" alt="info2"></td>
                <td><p>В нижнем белье от <span>HotMeBy</span> вы получаете наслаждение от безупречного комфорта и
                    качества. Оно не
                    наделено какими-то демографическими особенностями и подходит для девушек с любыми типами фигур.
                    Здесь
                    огромное количество потрясающих дизайнов, которые заставят вас почувствовать себя сексуальной, и
                    много разных стилей, которые остаются комфортными и поддерживают вас в течение дня. Этот бренд
                    создан для того, чтобы каждая девушка смогла чувствовать себя великолепно и ощутить дополнительный
                    заряд уверенности.</p>
                </td>
            </tr>
        </table>
        <label>Как оформить заказ на сайте?</label>
        <ul>
            <li>
                <h2>Добавьте понравившиеся товары в корзину</h2>
                Выберите товар, который Вам понравился и нажмите кнопку
                "Купить"
            </li>
            <li><h2>Заполните форму заказа</h2>
                Выберите способ доставки, укажите имя, контактные данные и адрес
            </li>
            <li><h2>Ожидайте ответа специалиста</h2>
                Специалист нашего магазина свяжется с вами, чтобы подтвердить заказ и уточнить детали
            </li>
            <li><h2>Доставка</h2>
                Доставка осуществляется по Беларуси сервисом РУП Белпочта. Стоимость доставки рассчитывается отдельно от
                стоимости товара и оплачивается клиентом при получении посылки в почтовом отделении
            </li>
        </ul>
    </div>
</section>
<section id="shop" class="shop">
    <div class="container">
        <div class="shop-title">
            <h2>Магазин</h2>
        </div>
        <input id="quantity" type="hidden" name="quantity" value="${quantity}">
        <div class="shop-items">
            <c:forEach var="item" items="${items}">
                <%--                <input type="hidden" name="quantity" value="${items.size()}">--%>
                <div class="shop-item">
                    <div class="shop-item-photo">
                        <img src="${item.getPhotoUrl()}" alt="shop">
                    </div>
                    <div class="shop-item-info">
                        <!--                    цвет,цена,материал,-->
                        <h3 class="shop-item-name">${item.getName()}</h3>
                        <table>
                            <tr>
                                <td><p>Материал:</p></td>
                                <td><p class="shop-item-data">${item.getMaterial()}</p></td>
                            </tr>
                            <tr>
                                <td><p>Цвет:</p></td>
                                <td><p class="shop-item-data">
                                    <input id="shop-input-color-${item.getId()}" type="hidden" name="item-color"
                                           value="${item.getColor()}">
                                    <div id="item-color-${item.getId()}" class="shop-item-color" data-title="белый"
                                         value="${item.getColor()}"></div>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td><p>Цена:</p></td>
                                <td><p class="shop-item-data">${item.getPrice()}&nbsp;б.р</p></td>
                            </tr>
                            <tr>
                                <td>
                                    <button id="shop-item-button-corsina-${item.getId()}"
                                            onclick="ButtonClickCorsina(${item.getId()})">В корзину
                                    </button>
                                </td>
                                <td>

                                    <button class="shop-item-button">Купить</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<%--<section class="corsina">--%>
<%--    <div class="container">--%>
<%--        <div class="corsina-block">--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>
<footer>
    <div class="container">
        <h2>HotMeBy</h2>
        <p>© 2022 ООО «HotMeBy». HotMeBy — магазин женского белья. Заказы online принимаются круглосуточно и без
            выходных.
            сервиса</p>
    </div>
</footer>
<script type="text/javascript" charset="utf-8">
    <%@include file="/front/home/script.js"%>
</script>
</body>
</html>