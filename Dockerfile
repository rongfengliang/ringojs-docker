FROM dalongrong/ringojs:1.2.1
WORKDIR /app
COPY app.js  /app/
ENTRYPOINT [ "ringo","app.js" ]

