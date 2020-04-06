FROM russmckendrick/nodejs
ADD src /srv/app
WORKDIR /srv/app
RUN npm install
EXPOSE 3000
RUN npm install pm2 -g
RUN pm2 start server.js
ENTRYPOINT ["pm2-runtime", "index.js"]