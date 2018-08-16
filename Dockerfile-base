FROM java:8
MAINTAINER  1141591465@qq.com
RUN apt-get update && apt-get install -y jsvc
ADD ringojs_1.2.1_all.deb /tmp/ringojs.deb
RUN dpkg -i /tmp/ringojs.deb && rm /tmp/ringojs.deb
CMD         ["bash"]


