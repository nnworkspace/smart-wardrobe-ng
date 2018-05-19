# Stage 0, based on Node.js, to build and compile Angular
FROM node:alpine as node
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY ./ /app/
##ARG env=prod
##RUN npm run build -- --prod --environment $env
ARG conf=production
RUN npm run build -- --configuration $conf
#RUN npm run build

# Stage 1, based on Nginx, to have only the compiled app, ready for production with Nginx
FROM nginx:alpine
COPY --from=node /app/dist/smart-wardrobe-ng /usr/share/nginx/html
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

