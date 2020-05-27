FROM busybox

COPY ./ /www/

EXPOSE 8080/tcp

ENTRYPOINT [ "httpd", "-f", "-v", "-u", "1000", "-h", "/www", "-p", "8080" ]
