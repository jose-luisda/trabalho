<?php

switch ($messaggio) {

case "Hotel di Booking.com":  			$messaggio = "Hotel do booking.com"; $tr = 1; break;
case "La stanza di Booking.com":  		$messaggio = "O unidade do booking.com"; $tr = 1; break;
case "con la tariffa":  			$messaggio = "com a tarifa"; $tr = 1; break;
case "corrisponde alla tariffa di hoteldruid":	$messaggio = "corresponde à tarifa do HotelDruid"; $tr = 1; break;
case "<div style=\"display: inline; color: red;\">Attenzione</div>: tariffe e disponibilità su Booking.com verranno<br> sovrascritte con quelle di hoteldruid":	$messaggio = "<div style=\"display: inline; color: red;\">Atenção</div>: Todos os preços e disponibilidade do booking.com serão substituídos <br>com os do HotelDruid"; $tr = 1; break;
case "Modifica l'interconnessione":  		$messaggio = "Modificar a interligação"; $tr = 1; break;
case "Si può assegnare una unica tariffa di hoteldruid ad ogni combinazione di stanza e tariffa di Booking.com":	$messaggio = "Você pode atribuir um preço único do HotelDruid em cada combinação de quarto e tarifa do booking.com"; $tr = 1; break;
case "Non è stata apportata nessuna modifica":	$messaggio = "Não houve modificação de nada"; $tr = 1; break;
case "Interconnessione con Booking.com aggiornata":	$messaggio = "A interligação com o booking.com foi atualizada"; $tr = 1; break;
case "Nome utente xml di Booking.com":  	$messaggio = "Nome de usuário XML do booking.com"; $tr = 1; break;
case "Password xml di Booking.com":  		$messaggio = "Senha XML do booking.com"; $tr = 1; break;
case "Crea l'interconnessione":  		$messaggio = "Criar interligação"; $tr = 1; break;
case "Cancella l'interconnessione":  		$messaggio = "Apagar interligação"; $tr = 1; break;
case "Interconnessione con Booking.com cancellata":	$messaggio = "A interligação com o booking.com foi apagada"; $tr = 1; break;
case "Inviare i messaggi a":  			$messaggio = "Enviar mensagem para"; $tr = 1; break;
case "Aggiorna manualmente le prenotazioni da Booking.com dal":	$messaggio = "Atualizar manualmente as reservas do booking.com a partir de"; $tr = 1; break;
case "Aggiorna":  				$messaggio = "Atualizar"; $tr = 1; break;
case "tutti":  					$messaggio = "todas"; $tr = 1; break;
case "Origine delle prenotazioni":  		$messaggio = "Origem aas reservas"; $tr = 1; break;
case "Salvare i dati della carta di credito nel commento del cliente?":	$messaggio = "Salvar os detalhes dos cartões de crédito nos comentários dos clientes?"; $tr = 1; break;
case "SI":  					$messaggio = "SIM"; $tr = 1; break;
case "NO":  					$messaggio = "NÃO"; $tr = 1; break;
case "Chiudere i periodi senza più disponibilità?":	$messaggio = "Fechar períodos sem mais disponibilidade?"; $tr = 1; break;
case "Tariffa opzionale per uso singola":  	$messaggio = "Tarifa opcional para uso singular"; $tr = 1; break;
case "Provare ad inserire prenotazioni multiple in appartamenti vicini?":	$messaggio = "Tentar inserir reservas multiplas em unidades nas proximidades?"; $tr = 1; break;
case "Utente per le date da chiudere in arrivo e partenza":	$messaggio = "Usuário para datas a serem fechadas na chegada e partida"; $tr = 1; break;
case "AVVISO":  				$messaggio = "Atenção"; $tr = 1; break;
case "le tariffe per persona non sono supportate da":	$messaggio = "tarifas por pessoa não são suportadas por"; $tr = 1; break;
case "tariffa non aggiornata in remoto":  	$messaggio = "tarifas não atualizadas em lugar remoto"; $tr = 1; break;
case "Utente che inserisce le prenotazioni":  	$messaggio = "Usuário para inserir as reservas"; $tr = 1; break;
case "Aggiornare la disponibilità quando si ricevono prenotazioni?":	$messaTarifaggio = "Atualizar disponibilidade ao receber reservas?"; $tr = 1; break;
case "aiuta ad evitare l'overbooking quando si ha":	$messaggio = "ajuda a evitar superlotações se estiver"; $tr = 1; break;
case "in più tariffe con la regola 2, ma non lo evita del tutto":	$messaggio = "em diferentes tarifas com a regra 2, mas não a evita completamente"; $tr = 1; break;
case "Aggiorna manualmente tutti i prezzi e la disponibilità":	$messaggio = "Atualizar manualmente todos os preços e disponibilidade"; $tr = 1; break;
case "Inviare una copia all'indirizzo email":	$messaggio = "Enviar uma cópia ao endereço e-mail"; $tr = 1; break;
case "prezzi e disponibilità":  		$messaggio = "preços e disponibilidade"; $tr = 1; break;
case "solo prezzi":  				$messaggio = "apenas os preçoss"; $tr = 1; break;
case "Attenzione":  				$messaggio = "Atenção"; $tr = 1; break;
case "c'è rischio di overbooking perchè alcune unità":	$messaggio = "existe risco de superlotações porque algumas unidades"; $tr = 1; break;
case "sono collegate con la regola 2 a diverse tariffe attivate per la disponibilità":	$messaggio = "estão conectadas com a regra 2 a diferentes tarivas ativadas pela disponibilidade"; $tr = 1; break;
case "Hotel ID su Booking.com":  		$messaggio = "Id do hotel no booking.com"; $tr = 1; break;
case "Nuova password":  			$messaggio = "Nova senha"; $tr = 1; break;
case "Importare il prezzo della prenotazione quando non coincide con quello calcolato da hoteldruid?":	$messaggio = "Importar o preço remoto da reserva quando não coincide com o calculado pelo HotelDruid?"; $tr = 1; break;
case "solo lettura":  				$messaggio = "apenas leitura"; $tr = 1; break;
case "solo disponibilità":  			$messaggio = "apenas a disponibilidade"; $tr = 1; break;
case "ci sono combinazioni di camere/tariffe di booking.com non collegate a tariffe di hoteldruid, c'è il rischio di non poter scaricare alcune prenotazioni":	$messaggio = "existem combinações de quartos/tarifas do booking.com que não são ligadas a tarifas no HotelDruid. Tem o risco de não poder importar algumas reservas"; $tr = 1; break;
case "Inviare restrizioni (chiusura, permanenza minima, ecc.) per tariffe in sola lettura?":	$messaggio = "Enviar restrições (fechamento, estadia mínima, etc.) para tarifas apenas leitura?"; $tr = 1; break;
case "Considerare le prenotazioni scaricate come confermate?":	$messaggio = "Considerar reservas importadas confirmadas?"; $tr = 1; break;
case "Modifica le date":  			$messaggio = "Modificar as datas"; $tr = 1; break;
case "Per attivare la connessione xml con booking.com dovete accedere al vostro account su booking.com, nella sezione \"channel manager\", e mandare la richiesta di attivazione selezionando come provider \"digitaldruid\" (ID 68)":	$messaggio = "Para ativar a connexão xml com boking.com você deve acessar a extranet booking.com, ir para a seção \"channel manager\"e enviar o pedido de ativação escolhendo \"digitaldruid\" (ID 68) como seu provedor"; $tr = 1; break;
case "Scarica tutte le prenotazioni attuali e future":	$messaggio = "Importar todas as reservas atuais e futuras"; $tr = 1; break;
case "continuando verranno scaricate le informazioni basiche di tutte le prenotazioni attuali e future presenti su Booking.com, comprese le prenotazioni arrivate prima dell'attivazione della connessione":	$messaggio = "clicando em Continuar as informações básicas de todas as reservas atuais e futuras do booking.com serão importados, incluindo reservas que foram criadas antes da ativação da connexão xml"; $tr = 1; break;
case "Se alcune di queste prenotazioni sono già state inserite <em>manualmente</em> su hoteldruid allora verranno inserite di nuovo, dando luogo <em>erroneamente</em> ad una <b>doppia prenotazione</b> per ognuna di esse":	$messaggio = "Se algumas destas reservas já foram inseridas <em>manualmente</em> no HotelDruid, eles serão inseridos novamente. <b>Reservas duplas</b> <em>erradas</em> vão aparecer no HotelDruid"; $tr = 1; break;
case "Se invece ci sono solo prenotazioni già scaricate dall'interconnessione con booking.com queste non verranno scaricate di nuovo":	$messaggio = "Se em vez disso esistem apenas reservas já importados da interligação com booking.com, elas não serão baixadas novamente"; $tr = 1; break;
case "massimo":  				$messaggio = "máximo"; $tr = 1; break;
case "persone aggiuntive":  			$messaggio = "pessoas adicionais"; $tr = 1; break;
case "persona aggiuntiva":  			$messaggio = "pessoa adicional"; $tr = 1; break;
case "Costo opzionale per persone aggiuntive":	$messaggio = "Custo adicional por pessas adicionais"; $tr = 1; break;
case "inviare solo le persone di base":  	$messaggio = "enviar apenas as pessoas básicas"; $tr = 1; break;
case "non inviare":  				$messaggio = "não enviar"; $tr = 1; break;
case "persone di base corrispondenti al prezzo inviato":	$messaggio = "pessoas básicas correspondentes ao preço enviado"; $tr = 1; break;
case "":  				$messaggio = ""; $tr = 1; break;
case "":  				$messaggio = ""; $tr = 1; break;

} # fine switch ($messaggio)

?>
