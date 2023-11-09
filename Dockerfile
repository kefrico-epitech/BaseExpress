# Utilisez une image de base avec Node.js préinstallé
FROM node:latest

# Créez un répertoire de travail pour l'application
WORKDIR /usr/src/app

# Copiez les fichiers package.json et package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application dans le répertoire de travail
COPY . .

# Exposez le port sur lequel l'application fonctionnera
EXPOSE 3000

# Démarrez l'application lorsque le conteneur Docker démarre
CMD ["node", "index.js"]
