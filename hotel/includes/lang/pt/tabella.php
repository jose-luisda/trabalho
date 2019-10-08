<?php

switch ($messaggio) {

case "situazione alle":  			$messaggio = "situação às"; break;
case "del":  					$messaggio = "do"; break;
case "Tabella prenotazioni del":  		$messaggio = "Tabela de reservas do"; break;
case "ERRORE":  				$messaggio = "ERRO"; break;
case "Torna al menù principale":  		$messaggio = "Voltar ao menu principal"; break;
case "Visualizza la tabella per la stampa":  	$messaggio = "Visualizar a tabela para impressão"; break;
case "Visualizza la tabella con i giorni":  	$messaggio = "Visualizar a tabela com os dias"; break;
case "documento di tipo":  			$messaggio = "documento do tipo"; break;
case "visualizza":  				$messaggio = "visualizar"; break;
case "Prenotazione non confermata":  		$messaggio = "Reserva não confirmada"; break;
case "Prenotazione confermata, caparra non pagata":	$messaggio = "Reserva confirmada, depósito não pago"; break;
case "Caparra pagata":  			$messaggio = "Depósito pago"; break;
case "Tutto pagato":  				$messaggio = "Tudo pago"; break;
case "durante l'inserimento dei dati del cliente quando si inserisce una nuova prenotazione":	$messaggio = "ao inserir dados do cliente quando uma nova reserve est´sendo inserida"; break;
case "Utilizzando il tasto 'cancella' dalla pagina di inserimento dei dati del cliente anche questa prenotazione verrà cancellata":	$messaggio = "Ao usar o botão 'cancelar' da página de entrada de dados do cliente, essa reserva também será cancelada"; break;
case "L'utente amministratore può disabilitare o cambiare la durata di queste prenotazioni da 'configura e personalizza'":	$messaggio = "O usuário administrador pode desativar ou alterar a duração dessas reservas em 'Configura e personalizar'"; break;
case "Trascinare l'inizio o la fine di una prenotazione per cambiare la data di arrivo o partenza":	$messaggio = "Arraste o início ou o fim de uma reserva para alterar a data de chegada ou saída"; break;
case "":  		$messaggio = ""; break;
case "":  		$messaggio = ""; break;

} # fine switch ($messaggio)

?>