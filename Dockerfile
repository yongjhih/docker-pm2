FROM node

RUN npm install -g pm2
RUN pm2 dump

VOLUME ["/srv/apps", "/srv/logs", "/srv/server.json"]

EXPOSE 3000

CMD ["pm2", "start", "/srv/server.json", "--no-daemon"]
