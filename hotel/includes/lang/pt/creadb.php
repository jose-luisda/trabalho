<?php

switch ($messaggio) {

case "Inserimento dei dati permanenti":  	$messaggio = "Inserir os dados permanentes"; break;
case "Inserisci questi dati per poi creare il database":	$messaggio = "Inserir estes dados para criar o banco de dados"; break;
case "Nome del database da utilizzare":		$messaggio = "Nome do banco de dados a para usada"; break;
case "Nome del computer a cui collegarsi":  	$messaggio = "Nome do computador para fazer a conexão"; break;
case "Numero della porta a cui collegarsi":  	$messaggio = "Número da porta para fazer a conexãor"; break;
case "Nome per l'autenticazione al database":  	$messaggio = "Nome de usário pela autenticação no banco de dados"; break;
case "Parola segreta per l'autenticazione al database":	$messaggio = "Senha pela autenticação no banco de dados"; break;
case "Caricare la libreria dinamica \"pgsql.so\" o \"mysql.so\"":	$messaggio = "Carregar a biblioteca dinâmica \"pgsql.so\" ou \"mysql.so\""; break;
case "No":  					$messaggio = "Não"; break;
case "Si":  					$messaggio = "Sim"; break;
case "scegliere si se non viene caricata automaticamente da php":	$messaggio = "escolher sim se a mesma não é carregada automaticamente pelo php"; break;
case "Nome del database a cui collegarsi temporaneamente":	$messaggio = "Nome do banco de dados para fazer a conexão temporária"; break;
case "Numero di unità da gestire":  		$messaggio = "Número de unidades para gerenciar"; break;
case "Crea il database":  			$messaggio = "Criar banco de dados"; break;
case "Database creato":  			$messaggio = "O banco de dados foi criado"; break;
case "Massimo numero di occupanti":  		$messaggio = "Número máximo de ocupação"; break;
case "Numero (o nome) piano":  				$messaggio = "Número (ou nome) do piso"; break;
case "Numero (o nome) casa":  				$messaggio = "Número (ou nome) da casa"; break;
case "Non è stato possibile creare il database, controllare i privilegi dell' utente, il nome del database o se esiste già un database chiamato": 						$messaggio = "Não foi possível criar o banco de dados. Verifique os privilégios do usuário, o nome do banco de dados ou se já existe um banco de dados chamado"; break;
						$messaggio = "It hasn't been possible to create the database, check the user privileges, the name of the database or if already exists a database called"; break;
case "I dati inseriti per il collegamento al database non sono esatti o il database non è in ascolto":	$messaggio = "Os dados inseridos para fazer a conexão ao banco de dados estão errados ou o banco de dados não está escutando"; break;
case "se postgres assicurarsi che venga avviato con -i e di avere i permessi giusti in pg_hba.conf":	$messaggio = "Se PostgreSQL reafirme se ele foi inciado com -i e se tem os privilégio certos em pg_hba.conf"; break;
case "Torna indietro":  			$messaggio = "Voltar"; break;
case "Dati inseriti":  				$messaggio = "Os dados foram inseridos"; break;
case "Tutti i dati permanenti sono stati inseriti":	$messaggio = "Todos os dados permanentes foram inseridos"; break;
case "Non ho i permessi di scrittura sulla directory dati, cambiarli e reiniziare l'installazione":	$messaggio = "Não possui privilégios de escrita na pasta dati. Verifique, adapta e recomece a instalação novamente"; break;
case "Tipo di database":			$messaggio = "Tipo de banco de dados"; break;
case "Database già esistente":			$messaggio = "O banco de dados já existe"; break;
case "Se già esistente e non vuoto usare un prefisso non presente nel database per il nome delle tabelle":	$messaggio = "Se ele já existe e não está vazio, use um prefixo novo antes do nome das tabelas no banco de dados"; break;
case "Normalmete 5432 o 5433 per Postgresql o 3306 per Mysql":	$messaggio = "Normalmente 5432 ou 5433 para PostgreSQL ou 3306 para MySQL/MariaDB"; break;
case "solo per Postgresql con database non esistente":	$messaggio = "apenas para PostgreSQL com banco de dados novos"; break;
case "Prefisso nel nome delle tabelle":		$messaggio = "Prefixo no nome das tabelas"; break;
case "opzionale, utile per più installazioni di HotelDruid nello stesso database":	$messaggio = "opcional, útil para várias instalações HotelDruid no mesmo banco de dados"; break;
case "Il prefisso del nome delle tabelle è sbagliato (accettate solo lettere minuscole, numeri e _ , primo carattere lettera)":	$messaggio = "O prefixo dos nomes das tabelas é inválido (apenas são aceitas letras minúsculas, números e _. O primeiro caractere deve ser uma letra minúscula)"; break;
case "Nome delle unità da gestire":		$messaggio = "Nome das unidades para ser gerenciado"; break;
case "Euro":					$messaggio = "Euro"; break;
case "Benvenuto a HotelDruid!":			$messaggio = "Bem-vindo ao HotelDruid!"; break;
case "Questi sono alcuni semplici passi che puoi seguire per configurare le funzionalità di base di HotelDruid":	$messaggio = "Estes são alguns passos simples que você pode seguir para configurar a funcionalidade básica de HotelDruid"; break;
case "utilizzando l'apposito tasto al di sotto di essa":	$messaggio = "utilizando o botão especial na parte inferior desta"; break;
case "pagina inserimento prezzi":		$messaggio = "página inserção de preços"; break;
case "vedi passo successivo":			$messaggio = "veja o próximo passo"; break;
case "pagina inserimento regole":		$messaggio = "página inserção de regras"; break;
case "Se questo server web è pubblico si può abilitare il login e creare nuovi utenti dalla":	$messaggio = "Se for instalado em um servidor web público, você pode habilitar o login e criar novos usuários na"; break;
case "pagina gestione utenti":			$messaggio = "página gerenciamento de usuários"; break;
case "Vai alla pagina":				$messaggio = "Ir na página"; break;
case "configura e personalizza":		$messaggio = "configurar e personalizar"; break;
case "per cambiare il nome della valuta, abilitare la registrazione delle entrate, inserire i metodi di pagamento, ed impostare molte altre opzioni":	$messaggio = "para mudar o nome da moeda, permitir a gestação das entradas, editar as formas de pagamento e definir muitas outras opções"; break;
case "Inserisci il numero di tariffe, un nome per ciascuna di esse ed i prezzi corrispondenti dalla":	$messaggio = "Digite o número de tarifas, um nome para cada uma delas e os correspondentes preços da"; break;
case "questo programma":			$messaggio = "este programa"; break;
case "Nome delle unità singole da gestire":	$messaggio = "Nome de unidades individuais para gerenciar"; break;
case "Numero di unità singole da gestire":	$messaggio = "Número de unidades individuais para gerenciar"; break;
case "non incluse nelle unità normali":		$messaggio = "não incluídos nas unidades normais"; break;
case "":			$messaggio = ""; break;
case "":			$messaggio = ""; break;

} # fine switch ($messaggio)

?>