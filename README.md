# Fivemcreator

- Aby nadać permisje wpisujesz -> chmod 777 ./fivemcreator.sh
- A potem żeby odpalić wpisujesz ./fivemcreator.sh
- Uzupelnij config i tyle ;D   

### Jak dodać użytkownika do bazy danych?

- sudo mysql
- CREATE USER 'NAZWA'@'localhost' IDENTIFIED BY 'HASLO';
- GRANT ALL PRIVILEGES ON *.* TO 'NAZWA'@'localhost' WITH GRANT OPTION;
- quit

### Odpalanie

- Dodaj do server.cfg klucz licencyjny oraz steam api za pomocą: nano server.cfg lub w ftp ;D
- Wpisujesz: cd /home/fxserver/ && bash /home/fx-server-data/run.sh +exec server.cfg
- I tyle
