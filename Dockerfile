FROM tobilg/elasticsearch:latest

RUN apt-get -y update
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

ADD ./elasticsearch-marathon-bootstrap.sh /usr/local/bin/
ADD ./elasticsearches.js /usr/local/bin/

CMD "/usr/local/bin/elasticsearch-marathon-bootstrap.sh"
