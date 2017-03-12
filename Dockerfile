FROM debian:jessie

ENV APP_HOME /usr/src/app

RUN apt-get update && apt-get install -y nginx-full nginx libssl-dev
RUN apt-get install -y openssl
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR $APP_HOME
ADD . $APP_HOME

RUN rm /etc/nginx/sites-enabled/default
RUN mv default /etc/nginx/sites-enabled/default

CMD sh -c "echo -n '$USER:$(openssl passwd -crypt $PASSWORD)\n' >> /etc/nginx/.htpasswd" && ./start.sh