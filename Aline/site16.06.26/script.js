let pratos = [
    "Lasanha",
    "Pizza",
    "Risoto",
    "Nhoque",
    "Ravioli"
];

let bebidas = [
    "Refrigerante",
    "Suco de Laranja",
    "Água",
    "Café",
    "Chá Gelado"
];

function mostrarPratos() {
    let resultado = document.getElementById("resultado");

    resultado.innerHTML = "<h2>Pratos</h2>";

    for (let i = 0; i < pratos.length; i++) {
        resultado.innerHTML += "<p>" + (i + 1) + " - " + pratos[i] + "</p>";
    }
}

function mostrarBebidas() {
    let resultado = document.getElementById("resultado");

    resultado.innerHTML = "<h2>Bebidas</h2>";

    for (let i = 0; i < bebidas.length; i++) {
        resultado.innerHTML += "<p>" + (i + 1) + " - " + bebidas[i] + "</p>";
    }
}

function pesquisarPrato() {
    let numero = document.getElementById("numeroPrato").value;
    let resultado = document.getElementById("resultado");

    if (numero >= 1 && numero <= pratos.length) {
        resultado.innerHTML =
            "<h2>Prato Encontrado</h2><p>" +
            pratos[numero - 1] +
            "</p>";
    } else {
        resultado.innerHTML = "<p>Prato não encontrado.</p>";
    }
}

function pesquisarBebida() {
    let numero = document.getElementById("numeroBebida").value;
    let resultado = document.getElementById("resultado");

    if (numero >= 1 && numero <= bebidas.length) {
        resultado.innerHTML =
            "<h2>Bebida Encontrada</h2><p>" +
            bebidas[numero - 1] +
            "</p>";
    } else {
        resultado.innerHTML = "<p>Bebida não encontrada.</p>";
    }
}

function pratoAleatorio() {
    let sorteado = Math.floor(Math.random() * pratos.length);

    document.getElementById("resultado").innerHTML =
        "<h2>Prato Aleatório</h2><p>" +
        pratos[sorteado] +
        "</p>";
}

function bebidaAleatoria() {
    let sorteado = Math.floor(Math.random() * bebidas.length);

    document.getElementById("resultado").innerHTML =
        "<h2>Bebida Aleatória</h2><p>" +
        bebidas[sorteado] +
        "</p>";
}