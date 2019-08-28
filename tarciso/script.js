
function envia_dados(parametro_1) {
    let form_data = new FormData(parametro_1);
    $.ajax({
        url:'recebimento_dados.php',
        type:'post',
        data:form_data,
        dataType: 'json',
        contentType :  false ,
        cache :  false ,
        processData : false
    }).done(function(){

    })
}

var dados = document.getElementById('dados');
dados.addEventListener('submit',(e)=>{
    e.preventDefault();
    var enviadados = envia_dados(this.dados);
})

function Selecao() {
    $.ajax({
        
        url:'selecao.php',
        type:'post',
        dataType: 'json',
        data:{
            'condicao': 1
        }
        
    }).done(function(resultado){
        tabela(resultado)
    })
}
var select = Selecao();
// setInterval(() => {
//     var select = Selecao();
// }, 10000);

function tabela(dados) {


    var tab = document.getElementById('table')
    

for (let ind = 0; ind < dados.contador ; ind++) {
    var tr = document.createElement("tr");
     for (let index = 0; index < 7; index++) {

        if (index<=4) {
            var td = document.createElement('td');
            var valor = document.createTextNode(dados.data[ind][index])
            td.appendChild(valor);
            tr.appendChild(td);
        } else {
            var td = document.createElement('td');
            if (index == 5 ) {
                var excluir = document.createElement('button');
                excluir.setAttribute('value',dados.data[0][0]);
                var fraze = document.createTextNode('Excluir');
                excluir.appendChild(fraze);
                 td.appendChild(excluir);
            } else {
                if (index == 6) {
                    var excluir = document.createElement('button');
                    excluir.setAttribute('value',dados.data[0][0])
                    fraze = document.createTextNode('Atualizar');
                    excluir.appendChild(fraze);
                    td.appendChild(excluir);
                }
            }
           
            tr.appendChild(td);
        }
       
        
    }

    tab.appendChild(tr);
}
   
}
