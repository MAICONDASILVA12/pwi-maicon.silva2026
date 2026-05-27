function verificarPromocao(){
    let dia=document.getElementById("dia").value;
    let resultado=document.getElementById("resultadoPromocao");
    //deixa tudo minusculo
    dia=dia.toLowerCase();
    //estrutura switch case
    switch(dia){
        case "segunda":
        resultado.innerHTML="Pizza em dobro";
        break;
        case "terça":
        resultado.innerHTML="Refrigerante Grátis";
        break;
        case"quarta":
        resultado.innerHTML="Rodizio com desconto";
        break;
        case"quinta":
        resultado.innerHTML="Sobremesa Grátis";
        case"sexta":
        resultado.innerHTML="Musica ao vivo";
        break;
        case"sábado":
        resultado.innerHTML="Menu especial";
        break;
        case"domingo":
        resultado.innerHTML="Restaurante fechado";
        break;
        default:
        resultado.innerHTML="Digite um dia valido";
        break;
        

    }
}