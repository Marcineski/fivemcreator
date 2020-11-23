#Fivemcreator

- Aby nadac permisje wpisujesz -> chmod 777 ./fivemcreator.sh 
- A potem zeby odpalic wpisujesz ./fivemcreator.sh

### Jak dodac uzytkownika do bazy danych?

- sudo mysql
- CREATE USER 'NAZWA'@'localhost' IDENTIFIED BY 'HASLO';
- GRANT ALL PRIVILEGES ON *.* TO 'NAZWA'@'localhost' WITH GRANT OPTION;
- quit

### Odpalanie

- Dodaj do server.cfg klucz licencyjny oraz steam api za pomoca: nano server.cfg lub w ftp ;D
- Wpisujesz cd /home/fxserver/ && bash /home/fx-server-data/run.sh +exec server.cfg
- I smiga 
