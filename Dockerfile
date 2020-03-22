FROM debian
MAINTAINER Sebastian Krzyszkowiak <dos@dosowisko.net>

RUN apt-get update && apt-get -y install ca-certificates unzip

ADD https://broth.itch.ovh/butler/linux-amd64/LATEST/archive/default /usr/local/bin/butler.zip

RUN cd /usr/local/bin && unzip butler.zip && rm butler.zip

CMD ["/usr/local/bin/butler"]
