# build environment
FROM node:12.2.0-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
COPY . /app
RUN npm run build

# Nginx
# FROM nginx:1.15.2-alpine
FROM nginx:1.16.0-alpine

COPY ./build /var/www

COPY nginx.conf /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=builder /app/build /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]


# Stage 0, "build-stage", based on Node.js, to build and compile the frontend
# FROM tiangolo/node-frontend:10 as build-stage

# WORKDIR /app

# COPY package*.json /app/

# RUN npm install

# COPY ./ /app/

# RUN CI=true npm test

# RUN npm run build
