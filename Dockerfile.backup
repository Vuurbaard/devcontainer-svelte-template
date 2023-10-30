# Build stage
FROM node:18-bullseye as build

WORKDIR /usr/src/app

COPY ./ ./
RUN npm install
RUN npm run build

# Production stage
FROM node:18-alpine

COPY --from=build /usr/src/app/build /home/node/app
COPY --from=build /usr/src/app/package.json /home/node/app

CMD node /home/node/app/index.js