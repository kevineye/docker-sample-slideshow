FROM kevineye/apache

COPY . /app

EXPOSE 80
ENV ADVERTISE_HOST docker.dev
ENV ADVERTISE_PORT 8081

CMD ["/usr/bin/supervisord", "-c", "/app/conf/supervisord.conf"]
