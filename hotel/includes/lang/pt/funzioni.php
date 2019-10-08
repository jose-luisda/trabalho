<?php

switch ($messaggio) {

case "<div style=\"display: inline; color: red;\">ERRORE</div> di scrittura del file":  		$messaggio = "<div style=\"display: inline; color: red;\">ERRO</div> de escrita do arquivo"; break;
case "Nome utente":  				$messaggio = "Usuário"; break;
case "Password":  				    $messaggio = "Senha"; break;
case "Entra":  					$messaggio = "Acessar"; break;
case "Login per HotelDruid":  			$messaggio = "Acessar o HotelDruid"; break;
case "Sessione <div style=\"display: inline; color: red;\">scaduta</div>":	$messaggio = "A sessão <div style=\"display: inline; color: red;\">expirou</div>"; break;
case "Nome utente o password <div style=\"display: inline; color: red;\">errati</div>":	$messaggio = "Nome de usuário e/ou senha <div style=\"display: inline; color: red;\">invalido</div>"; break;
case "Numero eccesivo di login <div style=\"display: inline; color: red;\">errati</div> negli ultimi":	$messaggio = "Número excessivo de tentativas logins <div style=\"display: inline; color: red;\">errados</div> nos últimos"; break;
case "minuti":  				$messaggio = "minutos"; break;
case "Dopo un login <div style=\"display: inline; color: red;\">errato</div> si devono attendere":	$messaggio = "Depois de uma tentativa login <div style=\"display: inline; color: red;\">errada</div> você deve esperar"; break;
case "secondi":  				$messaggio = "segundos"; break;
case "Il database deve essere aggiornato":  	$messaggio = "O banco de dados precisa ser atualizado"; break;
case "Aggiorna":  				$messaggio = "Atualizar"; break;
case "Mancano solo":  				$messaggio = "Faltam apenas"; break;
case "tentativi prima del blocco dei login": 	$messaggio = "tentativas erradas antes de bloquear os acessos"; break;
case "Manca solo":  				$messaggio = "U L T I M O   A V I S O ! ! Mais"; break;
case "tentativo prima del blocco dei login":	$messaggio = "tentativa errada e  T O D O S  os acessos serão bloqueados"; break;
case "È possibile reimpostare la password dal proprio account di hosting":	$messaggio = "É possível redefinir a senha na conta de hospedagem"; break;
case "":  		$messaggio = ""; break;
case "":  		$messaggio = ""; break;

} # fine switch ($messaggio)

?>