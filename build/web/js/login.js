const form = document.getElementById("form-login");

form.addEventListener("submit", function (event) {
    event.preventDefault();

    const email = form.getElementById("email").value.trim();
    const senha = form.getElementById("senha").value.trim();

    if (email === "" || senha === "" ) {
        alert("Email e Senha não preenchidos corretamente");
    } else {
        form.submit();
    }

});