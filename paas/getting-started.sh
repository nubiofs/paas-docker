#!/bin/bash
# ==============================================
# ==============================================
# Plataforma as a Service: ambientes de produção 
# e Dev com Jenkins como Integração Contínua. 
# 
# VERSION               0.0.1
# AUTHOR                Paulo Sergio da Silva
# EMAIL                 pss1suporte@gmail.com
# ==============================================
# ==============================================

# ==============================================
# ==============================================
# Configuração do servidor Web nginx.
sed -ie 's/listen 80 default_server;/listen 8001 default_server;/g' /etc/nginx/sites-available/default
sed -ie 's/listen \[::\]:80 default_server;/listen \[::\]:8001 default_server;/g' /etc/nginx/sites-available/default
/etc/init.d/nginx configtest
/etc/init.d/nginx restart
# ==============================================
# ==============================================




