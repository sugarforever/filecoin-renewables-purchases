FROM node:16

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY _helpers/csv.js _helpers/leaflet-headless.cjs ./
RUN mkdir ./logs

ENTRYPOINT ["node", "/usr/src/app/csv.js"]