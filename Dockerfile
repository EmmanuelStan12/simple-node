#Use NodeJS base image
FROM node:13

#create app directory
WORKDIR /usr/src/app

#install app dependencies by copying
#package.json and package-lock.json
COPY package*.json ./

#install dependencies
RUN npm install

#Copy app source
COPY . .

#Bind the port that the image will run on
EXPOSE 8080

#Define the docker image behaivior at runtime
CMD ["node", "server.js"]