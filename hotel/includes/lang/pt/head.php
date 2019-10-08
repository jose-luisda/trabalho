<?php

switch ($messaggio) {

case "PRENOTAZIONE":  		$messaggio = "RESERVA"; break;
case "TABELLE":  			$messaggio = "TABELAS"; break;
case "GENNAIO":  			$messaggio = "JANEIRO"; break;
case "FEBBRAIO":  			$messaggio = "FEVEREIRO"; break;
case "MARZO":  				$messaggio = "MARÇO"; break;
case "APRILE":  			$messaggio = "ABRIL"; break;
case "MAGGIO":  			$messaggio = "MAIO"; break;
case "GIUGNO":  			$messaggio = "JUNHO"; break;
case "LUGLIO":  			$messaggio = "JULHO"; break;
case "AGOSTO":  			$messaggio = "AGOSTO"; break;
case "SETTEMBRE":  			$messaggio = "SETEMBRO"; break;
case "OTTOBRE":  			$messaggio = "OUTUBRO"; break;
case "NOVEMBRE":  			$messaggio = "NOVEMBRO"; break;
case "DICEMBRE":  			$messaggio = "DEZEMBRO"; break;
case "PRENOTAZIONI":  		$messaggio = "RESERVAS"; break;
case "SPESE":  				$messaggio = "DISPESAS"; break;
case "CASSE":  				$messaggio = "CAIXAS"; break;
case "TARIFFE":  			$messaggio = "TARIFAS"; break;
case "CLIENTI":  			$messaggio = "CLIENTES"; break;
case "INSERIRE":  			$messaggio = "INSERIR"; break;
case "CLIENTE":  			$messaggio = "CLIENTE"; break;
case "PREZZI":  			$messaggio = "PREÇOS"; break;
case "REGOLE":  			$messaggio = "REGRAS"; break;
case "CONFIGURA":  			$messaggio = "CONFIGURAR"; break;
case "TUTTE":  				$messaggio = "TODAS"; break;
case "CORRENTI":  			$messaggio = "ATUAIS"; break;
case "FUTURE":  			$messaggio = "FUTURAS"; break;
case "ARRIVI":  			$messaggio = "CHEGADAS"; break;
case "PARTENZE":  			$messaggio = "SAÍDAS"; break;
case "MESSAGGI":  			$messaggio = "MENSAGENS"; break;
case "ENTRATE&nbsp;PREN.":  $messaggio = "ENTRADAS"; break;
case "UTENTI":  			$messaggio = "USUÁRIOS"; break;
case "SITO WEB":  			$messaggio = "SÍTIO WEB"; break;
case "INTERCONN.":  		$messaggio = "INTERLIGA."; break;
case "BACKUP":  			$messaggio = "CÓPIAS DE SEG."; break;
case "STATISTICHE":  		$messaggio = "ESTATÍSTICAS"; break;
case "INVENTARIO":  		$messaggio = "INVENTÁRIO"; break;
case "CERCA":  				$messaggio = "PESQUISAR"; break;
case "DOCUMENTI":  			$messaggio = "DOCUMENTOS"; break;
case "P.TO&nbsp;VENDITA":  	$messaggio = "PTO. DE VENDA"; break;
case "NUMERO":  			$messaggio = "N.º:"; break;
case "VAI":  				$messaggio = "OK"; break;
case "COSTI AGGIUNTIVI":  	$messaggio = "CUSTOS ADICIONAIS"; break;
case "CAPARRE E TASSE":  	$messaggio = "DEPÓSITOS E TAXAS"; break;
case "PARTENZE E CORRENTI": $messaggio = "SAÍDAS E ATUAIS"; break;
case "MENU":  				$messaggio = "MENU"; break;
case "":  		$messaggio = ""; break;
case "":  		$messaggio = ""; break;

# Simple theme top menu drop-down menus widths (leave defaults if widths are OK)

case "insert-ddw":  			$messaggio = "100px"; break;
case "tables-ddw":  			$messaggio = "100px"; break;
case "months-ddw":  			$messaggio = "86px"; break;
case "reservations-ddw":  		$messaggio = "150px"; break;
case "clients-ddw":  			$messaggio = "15em"; break;
case "rates-ddw":  			$messaggio = "150px"; break;
case "configure-ddw":  			$messaggio = "86px"; break;
} # fine switch ($messaggio)

?>