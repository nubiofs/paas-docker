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
3. Gerenciar containers com [Kubernetes](https://kubernetes.io/) [Alan Mark Berg: 2015 - 5];
4. Experiência em projetos utilizando micro serviços e computação distribuída;
5. Experiência em sistemas de banco de dados NoSQL (Cassandra, MongoDB, etc.);

![Kubernetes Architecture](https://github.com/pssilva/paas-docker/blob/master/kubernetes/architecture-kubernetes.png)

### Referência

- Oskar Hane: 2015, Packt Publishing, [Build Your Own PaaS with Docker](http://it-ebooks.directory/book-1784393940.html): <br />
	Create, modify, and run your own PaaS with modularized containers using Docker.<br />
	__ ￼Chapter 3: Creating Our First PaaS Image, pag 44.
- Sébastien Goasguen: 2016, O’Reilly Media, Inc., [Docker Cookbook](http://www.allitebooks.com/docker-cookbook/): <br />
	SOLUTIONS AND EXAMPLES FOR BUILDING DISTRIBUTED APPLICATIONS.
- Alan Mark Berg: 2015,  Packt Publishing, [Jenkins Continuous Integration Cookbook](https://ebooks-it.org/1784390089-ebook.htm), Second Edition
- Alan Mark Berg: 2015 - 5,  Packt Publishing, [Jenkins Continuous Integration Cookbook](https://ebooks-it.org/1784390089-ebook.htm), Second Edition <br />
	__ Chapter 5: Kubernetes, pag 149.
