#!/usr/bin/env bash
echo "Installing Apache and setting it up"

# Actualiza el índice de paquetes y luego instala Apache (en Ubuntu es apache2)
apt-get update >/dev/null 2>&1
apt-get install -y apache2 >/dev/null 2>&1

# Copia los archivos del directorio compartido de Vagrant al directorio de Apache
cp -r /vagrant/html/* /var/www/html/

# Habilita y arranca Apache
systemctl enable apache2
systemctl start apache2

echo "Apache installed and running"
