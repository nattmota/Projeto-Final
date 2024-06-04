window.onload = function () {
    // Máscara para o campo de CPF
    var cpfInput = document.getElementById('cpf');
    cpfInput.addEventListener('input', function () {
        var value = cpfInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.replace(/^(\d{3})(\d{3})(\d{3})(\d{2})$/, '$1.$2.$3-$4'); // Aplica a máscara
        cpfInput.value = value;
    });

    // Máscara para o campo de telefone
    var telefoneInput = document.getElementById('telefone');
    telefoneInput.addEventListener('input', function () {
        var value = telefoneInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.replace(/^(\d{2})(\d{4,5})(\d{4})$/, '($1) $2-$3'); // Aplica a máscara
        telefoneInput.value = value;
    });
};