# versión del servidor del lenguaje de programación javascript node
FROM node:18.9.0-alpine3.16 
# Adecuar bash para usarlo
RUN apk update && apk add --no-cache bash
# Crear el directorio de trabajo en el contenedor de linux y lo define como carpeta a usar
WORKDIR /usr/src/app
# Install app dependencies
# Instalar las dependencias o ódigo de terceros de la aplicaciòn
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# Se utiliza un comodín para garantizar que se copien tanto package.json como package-lock.json.
COPY package*.json ./
# Instalar las dependencias o librerias o código de terceros que indica el archivo package.json
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Si está construyendo su código para producción
# EJECUTAR npm ci --only=producción

# Bundle app source
# Copiar código de la aplicación del paquete o proyecto javascript tipo node
COPY . .
# Permitir el acceso por el puerto 80 al aplicativo
EXPOSE 80
CMD [ "node", "program.js" ]