(function(){
    for(let i=1; i<7; i++){
        let colorItem =document.getElementById("shop-input-color-"+i+"").value;
        document.getElementById("item-color-"+i+"").style.backgroundColor = colorItem;}
}());
function SmoothHeader(id){
    document.getElementById(id).scrollIntoView({behavior:"smooth"});
}
// function ButtonClickCorsina(id){
//     let button=document.getElementById("shop-item-button-corsina-"+id);
//     button.innerText="\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e";
//     button.style.backgroundColor = "white"
//     button.style.color="black";
// }
function ButtonClickCorsina(id){
    let i;
    let menu=document.getElementById("menu-item-quantity");
    if(menu){
        i=Number(menu.textContent);
        i++
    }
    let button=document.getElementById("shop-item-button-corsina-"+id);
    menu.innerText=String(i);
    button.innerText="\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e";
    button.style.backgroundColor = "white"
    button.style.color="black";
    button.style.border="2px solid black";
    button.disabled=true;
}