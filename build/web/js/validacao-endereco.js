window.onload = function () {
    var cidadeInput = document.getElementById('cidade');
    cidadeInput.addEventListener('input', function () {
        var value = cidadeInput.value;
        var semNumero = value.replace(/\d/g, '');
        cidadeInput.value = semNumero;
    });

    var estadoInput = document.getElementById('estado');
    estadoInput.addEventListener('input', function () {
        var value = estadoInput.value;
        var semNumero = value.replace(/\d/g, '');
        var limiteCaracteres = semNumero.slice(0, 2);
        estadoInput.value = limiteCaracteres;
    });
};