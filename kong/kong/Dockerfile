FROM kong:0.11
RUN yum install -y postgresql.x86_64

ADD ./kong/start.sh /kong/start.sh 
CMD bash /kong/start.sh
