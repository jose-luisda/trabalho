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