# # Utilizamos una imagen base de Ubuntu
# FROM ubuntu:latest

# # Actualizamos el sistema e instalamos Python y pip
# RUN apt-get update -y
# RUN apt-get install -y python3-pip

# # Instalamos la biblioteca requests
# RUN pip3 install requests

# # Copiamos un script de Python al contenedor
# COPY get_bitcoint_price.py /app/get_bitcoint_price.py

# # Establecemos el directorio de trabajo
# WORKDIR /app

# # Ejecutamos el script de Python al iniciar el contenedor
# CMD ["python3", "get_bitcoin_price.py"]
# #


# Utiliza una imagen base
FROM ubuntu:latest

# Instala las dependencias necesarias
RUN apt-get update && apt-get install -y python3  python3-pip wget

# Establecemos el directorio de trabajo
WORKDIR /app

#Descaragr
RUN wget -O /app/get_bitcoin.py https://hub.docker.com/r/fenix11/bitcoint_price_app.py


# Instalamos la biblioteca requests
RUN pip3 install requests

# Copiamos un script de Python al contenedor
#COPY get_bitcoin_price.py /app/get_bitcoin_price.py


# Configura y expone un servicio
#EXPOSE 8080
#CMD ["comando_para_iniciar_servicio"]

# Ejecutamos el script de Python al iniciar el contenedor
CMD ["python3", "./get_bitcoin_price.py"]


# Etiqueta la imagen con un esquema de versionado
LABEL version="1.0"