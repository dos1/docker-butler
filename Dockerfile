FROM debian
MAINTAINER Sebastian Krzyszkowiak <dos@dosowisko.net>

RUN apt-get update && apt-get -y install ca-certificates

ADD https://dl.itch.ovh/butler/linux-amd64/head/butler /usr/bin/

RUN chmod +x /usr/bin/butler

CMD ["/usr/bin/butler"]
