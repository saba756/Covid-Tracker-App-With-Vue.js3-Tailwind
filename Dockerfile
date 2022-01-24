FROM node:16
RUN mkdir -p /src/app
WORKDIR /app/src
COPY package.json .
RUN yarn
COPY . .
EXPOSE 3000
CMD ["npm", "run", "serve"]