# Usa la imagen oficial de Node.js como base
FROM node:latest as astro

# Habilita pnpm
RUN corepack enable && corepack prepare pnpm@latest --activate

# Crea y establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia solo los archivos de dependencias primero (mejora la caché de Docker)
COPY package.json pnpm-lock.yaml ./

# Instala las dependencias sin modificar el lockfile
RUN pnpm install --frozen-lockfile

# Luego, copia todo el código de la aplicación
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Comando para iniciar la aplicación Astro
CMD ["pnpm", "run", "dev"]

