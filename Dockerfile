# Usa una imagen base de Node.js (puedes usar Nginx o Apache para una app estática)
FROM node:16-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar el código fuente dentro del contenedor
COPY . .

# Instalar dependencias (si es necesario, aunque este ejemplo no las requiere)
# RUN npm install

# Exponer el puerto 8080 (puedes cambiar este puerto si lo deseas)
EXPOSE 8080

# Usar un servidor estático (por ejemplo, 'serve' para una app estática)
RUN npm install -g serve

# Iniciar el servidor para servir tu aplicación
CMD ["serve", "-s", ".", "-l", "8080"]
