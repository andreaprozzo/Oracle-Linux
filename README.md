# Oracle-Linux
Questa è la struttura del nostro docker contenente Oracle Linux 
Oracle Linux/
├── Dockerfile
└── docker-compose.yml



Per creare una build specifica e lanciarla con un solo comando abbiamo la necessità di creare due files
1-Dockerfile -> contenente tutta configurazione dell'immagine del docker che lanceremo
2-docker-compose.yml -> contenente il codice necessario all'avvio del container

I due files sono presenti nella cartella. 

Per lanciare la creazione della build e l'avvio del container eseguire -> docker-compose up -d
Per collegarsi via SSH al container eseguire -> ssh root@localhost -p 2222 / password -> oracle

Altri comandi utili per il docker-compose 
1-docker-compose down -> arresta il container
2-docker-compose restart -> riavvia il container
3-docker-compose build -> esegue la nuova build dell'immagine.

 