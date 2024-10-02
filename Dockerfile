# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /programas/api-microservicio2

# Copia el archivo package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto en el que la aplicación va a escuchar (8002)
EXPOSE 8002

# Comando para iniciar la aplicación
CMD ["node", "main.js"]