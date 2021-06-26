Descargar los archivos:
docker pull php:7.4-apache
sudo docker run -p 8080: 80 -v /home/server/pagina:/var/www/html --name=servidor php:7.4-apache
Crear el archivo html:
sudo nano /home/server/pagina/index.html
<! DOCTYPE html>
<html>
<mate charset = "utf-8">

<head>
     <title> tp final </title>
</head>
<body>
 
<h1> hola estas en la pagina de Camil Martinez en su Trabajo Final </h1> 
<object data="contador.php" type="text/php">
</object>
</body>
</html>
 sudo nano /home/server/pagina/contador.php
 <?php
    function contadorvisitas()
    {
        $archivo= "contador.txt";
        $f = fopen($archivo, "r"); 
        if($f)
        {
            $contadorvisitas = fread($f, filesize($archivo));
            $contadorvisitas = $contadorvisitas + 1; 
            fclose($f);
        }
        $f = fopen($archivo, "w+");
        if($f)
        {
            fwrite($f, $contadorvisitas);
            fclose($f);
        }
        return $contadorvisitas;
    }

	echo "Visitas totales ", contadorvisitas();
?>
sudo nano /home/server/pagina/contador.txt #este tiene que estar en 0
0
