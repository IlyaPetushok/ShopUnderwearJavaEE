function AddItem() {
    let block = document.getElementById("add-item");
    if (block.style.display === "none") {
        block.style.display = "block";
    } else {
        block.style.display = "none";
    }
}

(function () {
    for (let i = 1; i < 30; i++) {
        let colorItem = document.getElementById("input-color-" + i + "");
        if (colorItem) {
            document.getElementById("item-color-" + i + "").style.backgroundColor = colorItem.value;
        }
    }
}());

function changeItem(num) {
    let change = document.getElementById("change");

    if (change.style.display === "none") {
        let name, photo, material, color, price;
        name = document.getElementById("name-" + num);
        photo = document.getElementById("photo-" + num);
        material = document.getElementById("material-" + num);
        color = document.getElementById("input-color-" + num);
        price = document.getElementById("price-" + num);
        if (color) {
            document.getElementById("changePhoto").value = photo.src;
            document.getElementById("changeName").value = name.textContent;
            document.getElementById("changeColor").value = color.value;
            document.getElementById("changePrice").value = price.textContent;
            document.getElementById("changeMaterial").value = material.textContent;
        }
        change.style.display = "block";
    } else {
        change.style.display = "none";
    }


}