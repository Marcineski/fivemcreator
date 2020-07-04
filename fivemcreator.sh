echo 'Automatyczne tworzenia serwera FiveM + Baza danych na debian 9 by Itachi Uchiha#8957 / xNick4Name'
echo 'Wszystkie pliki zostaną zainstalowane w katalogu "home"'

INSTALACJA="Fivem Baza_Danych Fivem+Baza_danych porzuc"

select instaluj in $INSTALACJA
do
    case $instaluj in
        Fivem)
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
            git clone https://github.com/nick4nameyt/server.cfg.git
            sleep 3
            echo "Serwer został pomyślnie zainstalowany!"
            ;;
        Baza_Danych)
            echo "Instaluje samą baze danych"
            apt -y install sudo && sudo apt update && sudo apt upgrade -y && sudo apt update && sudo apt update && sudo apt upgrade -y && sudo apt upgrade -y && sudo apt update && sudo apt upgrade -y && sudo apt -y install lsb-release apt-transport-https ca-certificates && sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.3.list && sudo apt update && sudo apt upgrade -y && sudo apt -y install apache2 php7.3 mysql-server && sudo aplt update && sudo apt -y upgrade
            sudo apt -y install phpmyadmin && service apache2 restart && sudo apt -y update && sudo apt -y upgrade && sudo apt update && sudo apt upgrade -y && sudo apt -y install php7.3 && sudo apt -y install php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json && sudo apt install libapache2-mod-php7.3 && sudo apt update && sudo apt upgrade -y && sudo apt update && sudo apt upgrade -y && clear && history -c &
            sudo rm -r php7-3_msql.sh
            echo "Baza danych została pomyślnie zainstalowana!"
            ;;
        Fivem+Baza_danych)
            echo "Instaluje FiveM i baze danych :)"
            sleep 2
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
            git clone https://github.com/nick4nameyt/server.cfg.git
            sleep 3
            echo "Instalacja bazy danych..."
            apt -y install sudo && sudo apt update && sudo apt upgrade -y && sudo apt update && sudo apt update && sudo apt upgrade -y && sudo apt upgrade -y && sudo apt update && sudo apt upgrade -y && sudo apt -y install lsb-release apt-transport-https ca-certificates && sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php7.3.list && sudo apt update && sudo apt upgrade -y && sudo apt -y install apache2 php7.3 mysql-server && sudo aplt update && sudo apt -y upgrade
            sudo apt -y install phpmyadmin && service apache2 restart && sudo apt -y update && sudo apt -y upgrade && sudo apt update && sudo apt upgrade -y && sudo apt -y install php7.3 && sudo apt -y install php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json && sudo apt install libapache2-mod-php7.3 && sudo apt update && sudo apt upgrade -y && sudo apt update && sudo apt upgrade -y && clear && history -c &
            sudo rm -r php7-3_msql.sh
            echo "Baza danych została pomyślnie zainstalowana!"
            sleep 2
            echo "Miłego korzystania! :D"
            ;;
        porzuc)
            echo "Porzucam :("
            break;
                ;;
    esac
done
