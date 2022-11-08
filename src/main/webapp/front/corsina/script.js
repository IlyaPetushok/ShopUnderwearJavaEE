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
    let arr=[];
    let quantity=document.getElementById("quantity");
    if(quantity){
        arr=quantity.value.split(" ");
    }
    for (let i = 0; i < arr.length; i++) {
        let quantity=document.getElementById("button-quantity-"+arr[i]+"")
        let price = document.getElementById("priceNow-" + arr[i] + "");
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



function showBlockBurger() {
    let header = document.getElementById("header");
    let burgerBlock = document.getElementById("menu-burger");
    // let corsina=document.getElementById("items-all-corsina");
    // let button=document.getElementById("button_by");
    // let button=di
    let footer=document.getElementById("footer");
    let shop=document.getElementById("shop");
    // let price=document.getElementById("price");
    if (burgerBlock.style.display === "none") {
        // price.style.display="none";
        shop.style.display="none";
        footer.style.display="none";
        // corsina.style.display="none";
        // button.style.display="none";
        burgerBlock.style.display = "block";
        header.style.width = "100%";
        header.style.top = "0";
        header.style.position = "fixed";
        burgerBlock.style.position = "fixed";
    } else {
        // price.style.display="";
        footer.style.display="block";
        shop.style.display=""
        // corsina.style.display="block";
        // button.style.display="block";
        header.style.position = "";
        burgerBlock.style.display = "none";
    }
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

function showFormUser(){
    let byItems=document.getElementById("byItems")
    let formUser=document.getElementById("user-info");
    let indexesItem=document.getElementById("quantity")
    if(indexesItem){
        byItems.value=indexesItem.value;
    }
    if(formUser){
        if(formUser.style.display==="block"){
            formUser.style.display="none";
        }else {
            formUser.style.display="block";
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



