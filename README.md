# [PaaS Docker](https://hub.docker.com/r/pss1suporte/paas-docker/)

Tendo como objetivo <strong>[Plataform as a Service - PaaS](https://pt.wikipedia.org/wiki/Plataforma_como_servi%C3%A7o)</strong>: conteinerizado no Docker. O propósito é usar a imagem docker ([aqui](https://hub.docker.com/r/pss1suporte/paas-docker/)) para ser usado como servidor de integração contínua (CI) com o [Jenkins](https://jenkins.io/).

## Objetivos Principais [Conceitos](http://stackoverflow.com/questions/28608015/continuous-integration-vs-continuous-delivery-vs-continuous-deployment):
- Criar uma Plataforma de Produção - AWS;
- [Jenkins](https://jenkins.io/) - Integração Contínua; 
- Projetar Sistemas usando Arquiterura Microservices;
- Implantação Contínua (Continuous Deployment);

Para construir a imagem usei as orientações discutidas em [Oskar Hane: 2015].

### Adquirir Proficiências em Habilidades

1. Experiência em sistemas de containerização (e.g. [Docker](https://hub.docker.com/r/pss1suporte/paas-docker/));
2. Experiência em sistemas Linux e shell scripting;
3. Experiência em sistemas Amazon Web Services - AWS;
3. Gerenciar containers com [Kubernetes](https://kubernetes.io/) [Alan Mark Berg: 2015 - 5], vide figura 5-1;
4. Experiência em projetos utilizando micro serviços (Microservices) e computação distribuída;
5. Experiência em sistemas de banco de dados NoSQL (Cassandra, MongoDB, etc.);

![Kubernetes Architecture](https://github.com/pssilva/paas-docker/blob/master/kubernetes/architecture-kubernetes.png)


### Como usar:
Considerando que temos uma instância do Amazon Machine Image - AMI iniciada: [aqui](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/AccessingInstances.html) AWS EC2. Você pode acessar sua instância e executar o script: [aqui](https://github.com/pssilva/paas-docker/blob/master/paas/getting-started.sh). Ou executar manualmente os comandos abaixo:

- 1. Clonar o projeto: `git clone https://github.com/pssilva/paas-docker.git`;
- 2. Acessar a pasta: `cd paas-docker/paas`;
- 3. Baixar o jenkins: `wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war `
- 4. Construir (build) a imagem docker: `docker build -t ubuntu:PaaS-Docker . `;
- 5. Rodar a imagem - ubuntu:PaaS-Docker: `docker run -p 8080:8080 -p 8001:8001 -p 50000:50000 -i -t ubuntu:PaaS-Docker sh -c 'java -jar /root/jenkins.war > /var/log/jenkins-my-docker.log 2>&1'`
- 6. Acessar o link: `<IPv4 Public IP>:8080`, vide figura abaixo.

![IPv4 Public IP AMI](https://github.com/pssilva/paas-docker/blob/master/aws-ami/ip-publico.png)


### Referência

- Oskar Hane: 2015, Packt Publishing, [Build Your Own PaaS with Docker](http://it-ebooks.directory/book-1784393940.html): <br />
	Create, modify, and run your own PaaS with modularized containers using Docker.<br />
	__ ￼Chapter 3: Creating Our First PaaS Image, pag 44.
- Sébastien Goasguen: 2016, O’Reilly Media, Inc., [Docker Cookbook](http://www.allitebooks.com/docker-cookbook/): <br />
	SOLUTIONS AND EXAMPLES FOR BUILDING DISTRIBUTED APPLICATIONS.
- Alan Mark Berg: 2015,  Packt Publishing, [Jenkins Continuous Integration Cookbook](https://ebooks-it.org/1784390089-ebook.htm), Second Edition
- Alan Mark Berg: 2015 - 5,  __ Chapter 5: Kubernetes, pag 149.
- Christian Posta: 2016, O’Reilly Media, Inc., [Microservices for Java Developers](https://developers.redhat.com/promotions/microservices-for-java-developers/): <br />
	A Hands-on Introduction to Frameworks and Containers
- Markus Eisele: 2016, O’Reilly Media, Inc., [Modern Java EE Design Patterns](https://developers.redhat.com/promotions/distributed-javaee-architecture/): <br /> 
	Building Scalable Architecture for Sustainable Enterprise Development. 
