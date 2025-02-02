# Usa la imagen oficial de Node.js como base
FROM node:latest

# Crea y establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json de la carpeta 'app' al contenedor
COPY app/package*.json ./

# Instala las dependencias de Astro
RUN npm install

# Copia todo el contenido de la carpeta 'app' al contenedor
COPY app/ .

# Expone el puerto que utilizará la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación Astro
CMD ["npm", "run", "dev"]
