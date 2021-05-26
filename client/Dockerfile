FROM node:lts-alpine as BUILD
WORKDIR /app
COPY sample-app/package*.json /app/
COPY sample-app/public /app/public
COPY sample-app/src /app/src
RUN npm ci --only=production
RUN npm run build

FROM nginx:stable
RUN apt update && apt upgrade --assume-yes
RUN apt install --assume-yes ssh
RUN mkdir ~/.ssh
RUN touch ~/.ssh/authorized_keys
ENV SSH_PUBLIC_KEY ""
EXPOSE 22
COPY --from=BUILD /app/build/ /usr/share/nginx/html/
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf
ENV SERVER_DOMAIN "testserver.local"
EXPOSE 80
CMD ["/bin/sh", "-c", "echo ${SSH_PUBLIC_KEY} > ~/.ssh/authorized_keys && service ssh start && sed -i 's/SERVERDOMAIN/'${SERVER_DOMAIN}'/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
# CMD ["nginx", "-g", "daemon off;"]
