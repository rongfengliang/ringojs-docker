# ringojs-docker

ringojs-docker images

## dockerfile

> build with deb package

```code

FROM java:8
MAINTAINER  1141591465@qq.com
RUN apt-get update && apt-get install -y jsvc
ADD ringojs_1.2.1_all.deb /tmp/ringojs.deb
RUN dpkg -i /tmp/ringojs.deb && rm /tmp/ringojs.deb
CMD         ["bash"]

```

## How to use

```code
FROM dalongrong/ringojs-docker
WORKDIR /app
COPY app.js  /app/
ENTRYPOINT [ "ringo","app.js" ]

app.js

var app = function(request) {
   return {
      body: ['Hello World'],
      headers: {'Content-Type': 'text/html'},
      status: 200
   }
}

var {Server} = require('ringo/httpserver');
var server = new Server({app: app, port: 8080,host:"0.0.0.0"});
server.start();

```

## How to Build

* base image

```code

docker-compose -f docker-compose -f docker-compose-base.yaml
```

## How to Run demo

```code
docker-compose up -d
```

## Access

```code
open http://localhost:8080
```