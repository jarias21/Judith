FROM ubuntu:22.04

# Instalamos los paquetes
RUN apt update && apt install -y minidlna supervisor

# Copiamos el archivo para el servidor DNLA
COPY ./cfg/minidlna.conf /etc/minidlna.conf  

# Copiamos el archivo de supervisor para que inicie el servidor
COPY ./cfg/supervisor.conf /etc/supervisor/conf.d/

# Copiamos el archivo de inicio
COPY ./cfg/startup.sh /root/

# Exponemos el puerto
EXPOSE 8200

# Configuramos y ejecutamos el archivo cuando inicie la imagen
RUN chmod u+x /root/startup.sh
CMD ["/bin/bash", "-c", "/root/startup.sh"]
