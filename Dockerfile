FROM debian:10
LABEL MAINTAINER=".https://github.com/NATIKONTOP/BANNER-SP1IT-MADE-BY-NATIK"

WORKDIR NATIK/
ADD . /NATIK

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean
RUN apt-get install -y wget

CMD ["./NATIK.sh"]
