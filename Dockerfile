FROM node:6.9.1
WORKDIR /work
COPY . /work
RUN npm install
CMD ["node", "app.js"]
