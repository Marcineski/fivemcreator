# fivemcreator
Wpisujesz w SSH -> cdmod 777 ./fivemcreator.sh
A potem żeby odpalić to wpisujesz ./fivemcreator.sh

Stwórz użytkownika bazy za pomocą -
sudo mysql
CREATE USER 'NAZWA'@'localhost' IDENTIFIED BY 'HASLO';
GRANT ALL PRIVILEGES ON *.* TO 'NAZWA'@'localhost' WITH GRANT OPTION;
Aby odpalić napisz = cd /home/fxserver/ && bash /home/fx-server-data/run.sh +exec server.cfg
