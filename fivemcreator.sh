echo 'Automatyczne tworzenia serwera FiveM + Baza danych na debian 9 by Marcinek#5947'
echo 'Wszystkie pliki zostana zainstalowane w katalogu "home"'
echo -e "Wbij na dc Fivem Scripts: \e[31mhttps://discord.gg/JeQCCEK6\e[0m"
sleep 2

INSTALACJA="fivem database fivem+database quit"

select install in $INSTALACJA
do
    case $install in
        fivem)
            echo "Instaluje serwer na fivem"
            apt-get install git
            mkdir /home/fxserver/
            mkdir /home/fx-server-data/
            cd /home/fx-server-data
            wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2539-da65f31986338a670a9b8f57090bf5cc8f879d3a/fx.tar.xz
            cd /home/fx-server-data && tar xf fx.tar.xz
            git clone https://github.com/citizenfx/cfx-server-data.git /home/fxserver
            cd /home/fxserver
            rm README.md
            echo "Serwer Fivem zostal pomyslnie zainstalowany"
	   echo "pamietaj dodac klucz licencyjny oraz steam api ;D"
            exit 1
            ;;
        database)
            echo "Instaluje baze danych"
            wget http://files.alkers.pl/download/php7-3_msql.sh && chmod 777 php7-3_msql.sh && ./php7-3_msql.sh && rm -r php7-3_msql.sh
            echo "Baza danych zostala pomyslnie zainstalowana!"
	          sleep 2
            exit 1
            ;;
        fivem+database)
            echo "Rozpoczynam instalacje fivema..."
            apt-get install git
            mkdir /home/fxserver/
            mkdir /home/fx-server-data/
            cd /home/fx-server-data
            wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2539-da65f31986338a670a9b8f57090bf5cc8f879d3a/fx.tar.xz
            cd /home/fx-server-data && tar xf fx.tar.xz
            git clone https://github.com/citizenfx/cfx-server-data.git /home/fxserver
            cd /home/fxserver
            rm README.md
            sleep 3
            echo "Instalacja bazy danych..."
	          wget http://files.alkers.pl/download/php7-3_msql.sh && chmod 777 php7-3_msql.sh && ./php7-3_msql.sh && rm -r php7-3_msql.sh
            echo "Baza danych zostala pomyslnie zainstalowana!"
            echo "Milego korzystania! :D"
	    exit 1
            ;;
        quit)
            echo "Porzucam :("
            break;
            ;;
    esac
done
