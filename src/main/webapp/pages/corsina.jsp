<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 11.09.2022
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HotMeBy</title>
    <link rel="icon" href="logotip.jpg">
    <link rel="stylesheet" href="style.css">
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
            <div class="item-corsina">
                <div class="item-corsina-img">
                    <img src="shop-item/item5.jpg" alt="">
                </div>
                <!--            цена ,назв ,материал ,цвет ,кнопка удалить и
                                мб количество -->
                <div class="item-info">
                    <h2>Golden Queen</h2>
                    <table class="item-table-info">
                        <tr>
                            <td>Материал:</td>
                            <td>Эластичная сетка</td>
                        </tr>
                        <tr>
                            <td>Цвет:</td>
                            <td>
                                <p class="shop-item-data">
                                    <input id="shop-input-color-1" type="hidden" name="item-color" value="black">
                                <div id="item-color-1" class="shop-item-color" data-title="Чёрный" value="white"></div>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="quantity-item">
                                    <button onclick="priceAdd(1)">+</button>

                                    <label>
                                        <input id="button-quantity-1" type="text" name="quantity" value="1">
                                    </label>

                                    <button onclick="priceDeduct(1)">-</button>
                                </div>
                            </td>
                            <td>
                                <input id="priceNow-1" type="hidden" value="154">
                                <input id="price-1" type="hidden" name="price" value="154">
                                <div class="price">
                                    <label id="price-for-quantity-1" class="item-price">154</label>
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

            <div class="item-corsina">
                <div class="item-corsina-img">
                    <img src="shop-item/item6.jpg" alt="">
                </div>
                <!--            цена ,назв ,материал ,цвет ,кнопка удалить и
                                мб количество -->
                <div class="item-info">
                    <h2>Total black</h2>
                    <table class="item-table-info">
                        <tr>
                            <td>Материал:</td>
                            <td>Эластичная сетка</td>
                        </tr>
                        <tr>
                            <td>Цвет:</td>
                            <td>
                                <p class="shop-item-data">
                                    <input id="shop-input-color-2" type="hidden" name="item-color" value="yellow">
                                <div id="item-color-2" class="shop-item-color" data-title="Жёлтый" value="white"></div>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="quantity-item">
                                    <button onclick="priceAdd(2)">+</button>

                                    <label>
                                        <input id="button-quantity-2" type="text" name="quantity" value="1">
                                    </label>

                                    <button onclick="priceDeduct(2)">-</button>
                                </div>
                            </td>
                            <td>
                                <input id="priceNow-2" type="hidden" value="115">
                                <input id="price-2" type="hidden" name="price" value="115">
                                <div class="price">
                                    <label id="price-for-quantity-2" class="item-price">115</label>
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

            <div class="item-corsina">
                <div class="item-corsina-img">
                    <img src="shop-item/item2.jpg" alt="">
                </div>
                <!--            цена ,назв ,материал ,цвет ,кнопка удалить и
                                мб количество -->
                <div class="item-info">
                    <h2>Blood Revenge</h2>
                    <table class="item-table-info">
                        <tr>
                            <td>Материал:</td>
                            <td>Эластичная сетка</td>
                        </tr>
                        <tr>
                            <td>Цвет:</td>
                            <td>
                                <p class="shop-item-data">
                                    <input id="shop-input-color-3" type="hidden" name="item-color" value="red">
                                <div id="item-color-3" class="shop-item-color" data-title="Красный" value="white"></div>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="quantity-item">
                                    <button onclick="priceAdd(3)">+</button>

                                    <label>
                                        <input id="button-quantity-3" type="text" name="quantity" value="1">
                                    </label>

                                    <button onclick="priceDeduct(3)">-</button>
                                </div>
                            </td>
                            <td>
                                <input id="priceNow-3" type="hidden" value="92">
                                <input id="price-3" type="hidden" name="price" value="92">
                                <div class="price">
                                    <label id="price-for-quantity-3" class="item-price">92</label>
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
        </div>
        <div class="items-all-corsina">
            <h1>Корзина <img src="corsina.png" alt=""></h1>
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
</section>
<footer>
    <div class="container">
        <h2>HotMeBy</h2>
        <p>© 2022 ООО «HotMeBy». HotMeBy — магазин женского белья. Заказы online принимаются круглосуточно и без
            выходных.
            сервиса</p>
    </div>
</footer>
<script src="script.js" type="text/javascript">

</script>
</body>
</html>
