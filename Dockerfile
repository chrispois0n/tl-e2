FROM node:lts-alpine
RUN npm install -g http-server


RUN mkdir -p /tl-editor


COPY . /tl-editor 
WORKDIR /tl-editor
RUN npm install

ENV NODE_ENV=build

COPY . /tl-editor
RUN npm run build 

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "npm", "start"]
