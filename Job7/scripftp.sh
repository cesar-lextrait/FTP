apt-get update && apt-get upgrade -y
echo -ne '\n' | apt-get install proftpd-* 
echo -ne '\n' | apt-get install openssl
echo -ne 'kalimac\nkalimac\n' | adduser merry 
echo -ne 'secondbreakfast\nsecondbreakfast\n' | adduser pippin
mkdir /etc/proftpd/ssl
echo -ne '\n\n\n\n\n\n\n' | openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
chmod 0640 /etc/proftpd/ssl/proftpd.key.pem
ln -sf /fichier/modules.conf /etc/proftpd/modules.conf
ln -sf /fichier/tls.conf /etc/proftpd/tls.conf
ln -sf /fichier/proftpd.conf /etc/proftpd/proftpd.conf
reboot
