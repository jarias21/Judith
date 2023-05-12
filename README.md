# Docker M8
##
Mostraremos como montar un servicio multimedia DLNA mediante minidlna

## Enlace para generar un clon del repo
1. Realiza una clonación del repositorio mediante el comando 
git clone https://github.com/jarias21/ubuntu-dlna.git

2. Genera una imagen del directorio llamado "dlna-image" utilizando el siguiente comando:
   sudo docker buil -t lcal:dlna
  
3. Agrega los archivos de video al directorio denominado "media".

4. Inicia el contenedor utilizando el comando "sudo docker-compose up -d".

5. Ahora puedes disfrutar del contenido desde tu cliente DLNA preferido.
