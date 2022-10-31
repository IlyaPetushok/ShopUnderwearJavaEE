(function () {
    let arr = [];
    let quantity = document.getElementById("quantity");
    if (quantity) {
        arr = (quantity.value).split(" ");
    }
    for (let i = 0; i < arr.length-1; i++) {
        let colorItem = document.getElementById("shop-input-color-" + arr[i] + "");
        if (colorItem) {
            document.getElementById("item-color-" + arr[i] + "").style.backgroundColor = colorItem.value;
        }
    }
}());

function showBlockBurger(){
    let header=document.getElementById("header");
    let burgerBlock=document.getElementById("menu-burger");
    if(burgerBlock.style.display==="none"){
        burgerBlock.style.display="block";
        header.style.width="100%";
        header.style.top="0";
        header.style.position="fixed";
        burgerBlock.style.position="fixed";
    }
    else {
        header.style.position="";
        burgerBlock.style.display="none";
    }
}

function showInfo(id){
    let idBlock="info-text-"+id;
    let block=document.getElementById(idBlock);
    if(block.style.display==="none"){
        block.style.display="block";
    }
    else {
        block.style.display="none";
    }
}

function SmoothHeader(id) {
    showBlockBurger();
    document.getElementById(id).scrollIntoView({behavior: "smooth"});

}

function ButtonClickCorsina(id) {
    let i;
    let itemId=document.getElementById("indexes");
    if(itemId){
        itemId.value+=id+" ";
    }
    let menu = document.getElementById("menu-item-quantity");
    if (menu) {
        i = Number(menu.textContent);
        i++
    }
    let button = document.getElementById("shop-item-button-corsina-" + id);
    menu.innerText = String(i);
    button.innerText = "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e";
    button.style.backgroundColor = "white"
    button.style.color = "black";
    button.style.border = "2px solid black";
    button.disabled = true;
}