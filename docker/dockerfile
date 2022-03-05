FROM alpine
RUN apk update
ENV TZ Asia/Shanghai
RUN apk add tzdata && cp /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone
RUN apk add curl vim nodejs npm
ADD task.sh ./
ADD package.json ./
RUN mkdir /scripts
RUN npm install
ENV RUNSH /task.sh
CMD ["crond", "-f", "-d", "8"]
