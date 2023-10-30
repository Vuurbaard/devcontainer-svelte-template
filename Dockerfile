# Build stage
FROM node:18-bullseye as build

WORKDIR /app

COPY ./ ./
RUN npm install
RUN npm run build
RUN npm prune --production

# ----------------------

# Production stage
FROM node:18-alpine

WORKDIR /app

COPY --from=build /app/build build/
COPY --from=build /app/node_modules node_modules/
COPY package.json .

CMD node build/index.js