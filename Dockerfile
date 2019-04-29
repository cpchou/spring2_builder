FROM cpchou/jdk8_builder

RUN pwd
RUN wget https://cpchou0701.diskstation.me/forDocker/ncdr_repository.tar
RUN mkdir -p /root/.m2 
RUN tar xvf ncdr_repository.tar -C /root/.m2
RUN rm -f ncdr_repository.tar
RUN apk add --no-cache curl
ENTRYPOINT ["/usr/bin/curl"]
