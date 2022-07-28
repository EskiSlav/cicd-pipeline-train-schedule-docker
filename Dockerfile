FROM node
WORKDIR /opt/train-scheduler
EXPOSE 8080 8080
COPY package*.json .
RUN npm install
COPY . .
RUN ./gradlew build
CMD ["npm", "start"]
