FROM node:8.1.2-alpine
WORKDIR /root
RUN apk update; apk add git python2 bash rsync openssl; rm -rf /var/cache/apk/*
ENV date="23-06-2017"
RUN git clone https://github.com/toolkit-for-ynab/toolkit-for-ynab
WORKDIR /root/toolkit-for-ynab
#RUN git checkout 9ca8ac1
RUN npm install
RUN ./build
CMD [ "/bin/ash" ]
