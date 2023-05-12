FROM ubuntu:22.04

# Instalación de minidlna
RUN apt update && apt install -y minidlna 

# Copiamos el archivo de configuración
COPY ./archivos-configuracio/minidlna.conf /etc/minidlna.conf  

# Creamos el usuario del contenedor
RUN useradd -m judith
RUN mkdir /var/log/minidlna/
# Copiamos el archivo de inicio
COPY ./archivos-configuracio/inicio.sh /root/

# Exponemos el puerto
EXPOSE 8200
EXPOSE 1900

# Damos los permisos necesarios y ejecutamos el archivo cuando inicie la imagen
RUN chmod u+x /root/inicio.sh
CMD ["/bin/bash", "-c", "/root/inicio.sh"]
