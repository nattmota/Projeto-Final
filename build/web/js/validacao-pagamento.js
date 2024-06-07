window.onload = function () {
    // Máscara para o campo de vencimento (MM/AA)
    var vencimentoInput = document.getElementById('vencimentoCartao');
    vencimentoInput.addEventListener('input', function () {
        var value = vencimentoInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.replace(/^(\d{2})(\d{0,2})$/, '$1/$2'); // Adiciona a barra entre MM e AA
        value = value.slice(0, 5);
        vencimentoInput.value = value;
    });

    // Máscara para o campo de CVV
    var cvvInput = document.getElementById('cvvCartao');
    cvvInput.addEventListener('input', function () {
        var value = cvvInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.slice(0, 3); // Limita a 4 dígitos
        cvvInput.value = value;
    });

    // Máscara para o campo de telefone
    var telefoneInput = document.getElementById('telefone');
    telefoneInput.addEventListener('input', function () {
        var value = telefoneInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.replace(/^(\d{2})(\d{4,5})(\d{4})$/, '($1) $2-$3'); // Aplica a máscara
        telefoneInput.value = value;
    });

    // Máscara para o campo de CPF/CNPJ
    var cpfInput = document.getElementById('cpfCnpjPortador');
    cpfInput.addEventListener('input', function () {
        var value = cpfInput.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos

        if (value.length <= 11) { // Verifica se é CPF
            value = value.replace(/^(\d{3})(\d{3})(\d{3})(\d{2})$/, '$1.$2.$3-$4'); // Aplica a máscara de CPF
        } else { // Se for maior que 11 dígitos, considera CNPJ
            value = value.replace(/^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})$/, '$1.$2.$3/$4-$5'); // Aplica a máscara de CNPJ
        }

        cpfInput.value = value;
    });

    var nmrCartao = document.getElementById('numeroCartao');
    nmrCartao.addEventListener('input', function () {
        var value = nmrCartao.value;
        value = value.replace(/\D/g, ''); // Remove caracteres não numéricos
        value = value.slice(0, 16); // Limita a 16 dígitos
        value = value.replace(/(\d{4})(?=\d)/g, '$1 '); // Adiciona espaço a cada 4 dígitos
        nmrCartao.value = value;
    });

    var nomeCartao = document.getElementById('input-maior');
    nomeCartao.addEventListener('input', function () {
        var value = nomeCartao.value;
        var semNumeros = value.replace(/\d/g, ''); // Remove todos os dígitos numéricos
        nomeCartao.value = semNumeros; // Define o valor do campo sem os dígitos numéricos
    });

};