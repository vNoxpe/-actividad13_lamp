# 1.-Descripción de la instalación de Apache HTTP Server, PHP, MariaDB Server en la última versión Debian Server/Ubuntu Server.
Paso 1: Actualización repositorios:
apt update
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/fdbecf3e-1e99-4b9a-ba7a-b126a80a9512)

Paso 2: Instalación Apache2:
apt install apache2 -y
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/01f59611-cdcf-4faf-87cc-7c651744d710)
Paso 3: Instalación PHP
apt install php libapache2-mod-php php-mysql -y
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/32a5f418-7ca9-4137-a70c-e75fa0a9e37d)


Paso 4: Entramos en el directorio /etc/apache2/sites-enabled
Editamos sitio web por defecto (000-default.conf):
Nota: Añadimos la directiva DirectoryIndex indicando la página
PHP por defecto:
El sitio web (host virtual) quedaría de la siguiente manera:
<VirtualHost *:80>
#ServerName www.example.com
ServerAdmin webmaster@localhost
DocumentRoot /var/www/html
DirectoryIndex index.html index.php (Nota: Se debe añadir
esta línea)
ErrorLog ${APACHE_LOG_DIR}/error.log
CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/9dd5f67a-44ff-4251-8cc0-bb727f67dd27)

Paso 5: Reiniciamos servicio apache2
systemctl restart apache2
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/df452aae-2650-4ede-83bc-0e7512cb28f5)

Paso 6:- Entramos en /var/www/html
Comprobación de LAMP stack:
Creamos en el “documentroot” del sitio web por defecto
(/var/www/html) una página de prueba: info.php para testear php:
echo "<?php phpinfo(); ?>" > info.php
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/4978edcb-8189-4e0c-a881-689ad0cb2d85)

Desde el navegador e incluimos la siguiente URL:
http://ip_servidor/info.php
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/31ebbc30-ab32-4d88-bb36-deae7d875a3d)
## MARIADB
Paso 1: Actualización repositorios:
apt update
Paso 2: Instalación servidor de base de datos y cliente
apt install -y mariadb-server mariadb-client
apt install -y mariadb-server mariadb (alternativo)
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/e88b489d-fa5b-4a27-acb4-abdf3294b285)

Paso 3: Acceso a MariaDB desde consola servidor (como root)
#mariadb
#mariadb -u root
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/874b6d49-4262-444b-99a4-6e427f06c88d)

Paso 4: Cambiar la contraseña de root
MariaDB> ALTER USER ‘root’@’localhost’ identified BY 'usuario@1';
MariaDB> flush privileges;
MariaDB> exit:
![image](https://github.com/vNoxpe/-actividad13_lamp/assets/144890599/118b00aa-66b1-4f04-99e0-fc68bf8d726e)


# 2.-Descripción de la instalación de phpMyAdmin.

Paso 1: Instalación PHPMyAdmin:
sudo apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y

![image](https://github.com/vNoxpe/actividad13_lamp/assets/144890599/060fd9d7-6c3f-4646-a489-599852703880)

Paso 2: IMPORTANTE!! Durante el proceso de instalación se debe elegir el servidor web: apache2

Paso 3: Confirma que desea utilizar dbconfig-common para configurar la base de datos

Paso 4: Finalmente se solicitará una contraseña para phpMyadmin, por ejemplo, alumnoXXX

Paso 5: Acceso a PHPMyAdmin: http://ip_host/phpmyadmin/

![image](https://github.com/vNoxpe/actividad13_lamp/assets/144890599/ee6b6413-3e5b-456a-a6ad-79d739d52919)

# 3.-Descripción de la instalación de Adminer.
Paso 1: Entramos el la pagina de adminer 
[adminer]https://www.adminer.org/
Paso 2: Damos a descargar
![image](https://github.com/vNoxpe/actividad13_lamp/assets/144890599/46e820d5-4a53-4637-a790-0706df11419b)
Paso 3: Elegimos esto, y lo copiamos
![image](https://github.com/vNoxpe/actividad13_lamp/assets/144890599/7394a9b1-a902-4f0a-ae98-2774d6ea5525)
Paso 4: En la maquina virtual en /var/www/html hacemos esto para descargar el fichero
![image](https://github.com/vNoxpe/actividad13_lamp/assets/144890599/b8655e75-361a-4b8c-bbbd-2fe11b301cc7)

# 4.- Mostrar el resultado final:

- http://ec2-54-173-153-168.compute-1.amazonaws.com

- http://ec2-3-86-45-92.compute-1.amazonaws.com/phpmyadmin

- http://ec2-3-86-45-92.compute-1.amazonaws.com/adminer.php
