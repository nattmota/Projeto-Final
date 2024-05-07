let inputImg = document.getElementById("imagem");
let img = document.getElementById("imagem-produto");

inputImg.onchange = function () {
    img.src = URL.createObjectURL(inputImg.files[0]);
}

