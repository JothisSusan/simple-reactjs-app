FROM mhart/alpine-node:11 AS builder
WORKDIR /app
COPY . .
RUN npm install -g create-react-app
RUN npm install 
RUN npm install react-scripts@3.4.1 -g --silent
FROM mhart/alpine-node
RUN yarn global add serve
WORKDIR /app
COPY --from=builder /app/build .
CMD ["serve", "-p", "80", "-s", "."]
