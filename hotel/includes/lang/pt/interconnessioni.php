<?php

switch ($messaggio) {

case "Aggiornamento eseguito con successo":  	$messaggio = "Atualização feita com successo"; break;
case "Non si è potuto portare a termine l'<div style=\"display: inline; color: red;\">aggiornamento</div>":	$messaggio = "A <div style=\"display: inline; color: red;\">atualização</div> falhou"; break;
case "OK":  					$messaggio = "OK"; break;
case "<div style=\"display: inline; color: red;\"><b>ATTENZIONE</b></div>: premendo su <b>\"<i>Continua</i>\"</b> tutti i dati del <i>database attuale</i> verranno <b>cancellati</b>":	$messaggio = "<div style=\"display: inline; color: red;\"><b>ATENÇÂO</b></div>: se clicar em <b>\"<i>Continuar</i>\"</b> todos os dados do <i>banco de dados actual</i> serão <b>apagados</b>"; break;
case "Continua":  				$messaggio = "Continuar"; break;
case "Subordinazione creata":  			$messaggio = "A subordinação foi criada"; break;
case "Impossibile effettuare il collegamento, controllare i dati immessi":	$messaggio = "Conexão recusada, verifique os dados de acesso inseridos"; break;
case "Subordinazione cancellata":  		$messaggio = "A subordinação foi apagada"; break;
case "Torna indietro":  			$messaggio = "Voltar"; break;
case "Interconnessioni con sorgenti esterne di dati":	$messaggio = "Interligações com fontes de dados externas"; break;
case "Cancella":  				$messaggio = "Apagar"; break;
case "la subordinazione":  			$messaggio = "a subordinação"; break;
case "Subordinazione ad un'altra installazione di hoteldruid":	$messaggio = "Subordinação a uma outra instalação de HotelDruid"; break;
case "Con la subordinazione non si potranno inserire nuovi dati o apportare modifiche, ma solo importare i dati dall'installazione principale":	$messaggio = "Com a subordinação não poderá inserir novos dados ou aplicar alterações, mais apenas importar dados da instalação principal"; break;
case "Subordina questa installazione di hoteldruid a quella che si trova all'indirizzo":	$messaggio = "Subordinar esta instalação de HotelDruid a quela que está localizado em"; break;
case "Password":  				$messaggio = "Senha"; break;
case "Commento da aggiungere al titolo di questa installazione":	$messaggio = "Comentário para acrescentar ao título desta instalação"; break;
case "Crea la subordinazione":  		$messaggio = "Criar a subordinação"; break;
case "Usa compressione":  			$messaggio = "Usar compactação"; break;
case "Utente per l'aggiornamento remoto delle interconnessioni":	$messaggio = "Usuário para actualizar remotamente as interligações"; break;
case "Utente per l'aggiornamento remoto modificato":	$messaggio = "O usuário pelas actualizações remotas foi modificado"; break;
case "Modifica":  				$messaggio = "Modificar"; break;
case "Aggiornamento codice sorgente eseguito con successo":  	$messaggio = "Atualizando o código fonte feito com sucesso"; break;
case "amministratore o utente con i privilegi per creare backup":	$messaggio = "administrador ou usuário com privilégios para criar cópias de segurança"; break;
case "nome utente":  				$messaggio = "Usuário"; break;
case "Versione locale diversa da quella remota":	$messaggio = "Versão local diferente da versão remota"; break;
case "Non si è potuto scaricare il backup remoto":	$messaggio = "Não foi possível baixar a cópias de segurança remota"; break;
case "Non si è potuto stabilire la connessione":	$messaggio = "Não foi possível estabelecer a conexão"; break;
case "Non ho i permassi di scrittura sulla cartella dati":	$messaggio = "Falta o privilégio de escrita na pasta dati"; break;
case "Prova a mantenere i dati degli anni non presenti nell'installazione remota":	$messaggio = "Tente manter os dados dos anos não presentes na instalação remota"; break;
case "nella pagina delle interconnessioni":  	$messaggio = "na página de interligações"; break;
case "Modifica la regola di assegnazione":  	$messaggio = "Modificar as regras de atribuição"; break;
case "La prenotazione cancellata non era presente nel database":	$messaggio = "A reserva cancelada não foi encontrada no banco de dados"; break;
case "gruppo":  				$messaggio = "grupo"; break;
case "Attenzione":  				$messaggio = "Atenção"; break;
case "carta di credito non salvata":  		$messaggio = "os detalhes do cartão de crédito não foram salvas"; break;
case "":  		$messaggio = ""; break;
case "":  		$messaggio = ""; break;

} # fine switch ($messaggio)

?>