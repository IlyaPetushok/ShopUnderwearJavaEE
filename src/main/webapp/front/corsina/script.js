(function () {
    let arr = [];
    let quantity = document.getElementById("quantity");
    if (quantity) {
        arr = (quantity.value).split(" ");
    }
    // alert(arr);
    for (let i = 0; i < arr.length-1; i++) {
        // alert(arr[i]);
        let colorItem = document.getElementById("shop-input-color-" + arr[i] + "");
        if (colorItem) {
            document.getElementById("item-color-" + arr[i] + "").style.backgroundColor = colorItem.value;
        }
    }
    priceShowCorsina()
}());

function priceShowCorsina() {
    let quantityShow=document.getElementById("quantity-all-corsina");
    let priceShow = document.getElementById("price-all-corsina");
    let sum=0,sum1=0;
    let num;
    for (let i = 1; i < 4; i++) {
        let quantity=document.getElementById("button-quantity-"+i+"")
        let price = document.getElementById("priceNow-" + i + "");
        if (price && quantity) {
            // sum=Number(sum);
            // alert("began"+sum);
            sum1+=Number(parseInt(quantity.value))
            sum +=Number(parseInt(price.value));
            // alert("num " + parseFloat(price.value).toFixed(2));
            // alert("later"+sum);
            // alert(num)
        }
    }
    quantityShow.textContent=sum1;
    priceShow.textContent=sum;

}

function priceAdd(number) {
    let priceInp = document.getElementById("price-" + number + "");
    if (priceInp) {
        let price = parseInt(priceInp.value);
        let button = document.getElementById("button-quantity-" + number + "");
        button.value = parseInt(button.value) + 1;
        // priceInp=price*button.value-1;
        price = price * button.value;
        showPrice(price, number, true);
    }
}

function priceDeduct(number) {
    let priceInp = document.getElementById("price-" + number + "");
    if (priceInp) {
        let price = parseInt(priceInp.value);
        let button = document.getElementById("button-quantity-" + number + "");
        if (button.value != 1) {
            button.value = parseInt(button.value) - 1;
            price = price * button.value;
            showPrice(price, number, false);
        }
    }
}

const time = 1000;
let priceBefore;

function showPrice(price, number, flag) {
    let step = 1;
    let input = document.getElementById("priceNow-" + number + "");
    if (input) {
        priceBefore = parseInt(input.value);
    }
    let span = document.getElementById("price-for-quantity-" + number + "");
    let t = Math.round(time / (price / step));
    let interval = setInterval(() => {

        if (flag) {
            priceBefore = priceBefore + step;
        } else {
            priceBefore = priceBefore - step
        }
        if (priceBefore == price) {
            clearInterval(interval);

        }
        input.value = priceBefore;
        span.textContent = priceBefore;
        priceShowCorsina();
    }, t);
}



