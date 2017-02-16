# escape=\ (backslash)
# Plataforma as a Service: ambientes de produção e Dev com Jenkins como Integração Contínua.
#
# VERSION               0.0.1
# AUTHOR                Paulo Sergio da Silva
# EMAIL                 pss1suporte@gmail.com

FROM      ubuntu
VOLUME /tmp

LABEL Description="Buscando a utilização de softwares de maneira mais flexível, sendo possível desenvolver suas próprias aplicações baseadas em alguma tecnologia (framework, linguagem etc.) e utilizar a infraestrutura necessária, e o mais importante, adequada a aplicação desenvolvida (em Java, ou PHP, ou NodeJs). Sendo organizado por Tags na imagem do Docker." Vendor="PSSILVA Products" Version="1.0"
RUN apt-get update && apt-get install -y inotify-tools apache2 openssh-server git
RUN apt-get clean all
RUN apt-get install -y default-jre
RUN apt-get install -y default-jdk
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y software-properties-common && add-apt-repository ppa:maxmind/ppa && apt-get update && apt-get -y install libmaxminddb0 libmaxminddb-dev mmdb-bin
RUN apt-get clean all
RUN apt-get update




