Para instalarlo:
sudo docker pull php:7.4-apache
Crear y configurar el servidor de docker:
sudo docker run -p 8080:80 -v /home/pagina:/var/www/html --name=servidor php:7.4-apache
Crear el archivo html:
sudo nano /home/pagina/index.html

<!DOCTYPE html>
<html>
<mate charset="utf-8">

<head>
     <title>tp final</title>
</head>
<body>
<h1>hola estas en la pagina de Camil Martinez en su Trabajo Final</h1> 
</body>
</html>
