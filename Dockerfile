FROM node:14
WORKDIR '/app'
COPY package.json .
RUN npm install -g create-react-app
RUN npm install 
RUN npm install react-scripts@3.4.1 -g --silent
RUN npm install --save react react-dom react-scripts
COPY . ./
CMD ["npm", "start"]
