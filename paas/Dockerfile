# Plataforma as a Service: ambientes de produção e Dev com Jenkins como Integração Contínua.
#
# VERSION               0.0.1
# AUTHOR                Paulo Sergio da Silva
# EMAIL                 pss1suporte@gmail.com
# escape=\ (backslash)

FROM      ubuntu
VOLUME /tmp

LABEL Description="Buscando a utilização de softwares de maneira mais flexível, sendo possível desenvolver suas próprias aplicações baseadas em alguma tecnologia (framework, linguagem etc.) e utilizar a infraestrutura necessária, e o mais importante, adequada a aplicação desenvolvida (em Java, ou PHP, ou NodeJs). Sendo organizado por Tags na imagem do Docker." Vendor="PSSILVA Products" Version="1.0"
RUN apt-get update && apt-get install -y inotify-tools apache2 openssh-server git
RUN apt-get clean all
RUN apt-get install -y default-jre
RUN apt-get install -y default-jdk
RUN apt-get install -y openjdk-8-jre
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y software-properties-common && add-apt-repository ppa:maxmind/ppa
RUN apt-get install -y dkms
RUN apt-get install -y vim

RUN apt-get install -y nginx

RUN apt-get install -y maven

RUN wget -q -O - http://pkg.jenkins-ci.org/debian-stable/jenkins-ci.org.key | apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

RUN apt-get clean all
RUN apt-get update

RUN apt-get install -y jenkins
RUN a2enmod proxy
RUN /etc/init.d/apache2 restart

COPY jenkins.conf /etc/apache2/sites-available/jenkins.conf
RUN a2ensite jenkins
RUN apache2ctl restart

ADD jenkins.war /root/jenkins.war



ADD config_script.sh /root/config_script.sh

RUN chmod +x ~/config_script.sh

ENV MAVEN_HOME=/usr/share/maven

RUN ["sh","-c", "/root/config_script.sh"]


