function mostrarPratos() {
    // Matriz
    const pratos = ["Lasanha", "Macarrão", "Pizza", "Risoto", "Nhoque", "Ravioli"];

    // Div resultado
    let resultado = document.getElementById("resultado");
    resultado.innerHTML = "";

    // Percorrer a matriz
    for (let i = 0; i < pratos.length; i++) {
        resultado.innerHTML += "<p>" + pratos[i] + "</p>";
    }
}