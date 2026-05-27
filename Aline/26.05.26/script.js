//função
function verificarReserva(){
    //Variável 
    let horario=document.getElementById("horario").value;
    //resultado
    let resultado=document.getElementById("resultado");
    // estrutura de decisão
    if (horario >= 18 && horario <=23){
        resultado.innerHTML="Reserva disponivel";
    }else{
        resultado.innerHTML="Restaurante fechado";
    }




} 