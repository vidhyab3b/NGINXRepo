FROM nginx:latest
#FROM nginx:mainline-alpine
#RUN rm /etc/nginx/conf.d/*
#ADD hello.conf /etc/nginx/conf.d/
COPY hello.conf /etc/nginx/nginx.conf
ADD index.html /usr/share/nginx/html
#CMD ["/usr/sbin/nginx"]
ENTRYPOINT ["nginx","-g","daemon off;"]
