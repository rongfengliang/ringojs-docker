FROM dalongrong/ringojs-docker
WORKDIR /app
COPY app.js  /app/
ENTRYPOINT [ "ringo","app.js" ]
