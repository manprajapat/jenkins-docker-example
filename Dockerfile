FROM russmckendrick/nodejs
ADD src /srv/app
WORKDIR /srv/app
RUN npm install pm2 -g
RUN npm install
EXPOSE 80
EXPOSE 3000
ENTRYPOINT ["pm2-runtime", "index.js"]