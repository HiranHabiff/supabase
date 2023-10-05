# Use uma imagem base com git e docker
FROM docker/compose:1.29.2

# Clone o repositório supabase
RUN git clone --depth 1 https://github.com/supabase/supabase

# Mude para o diretório docker
WORKDIR /supabase/docker

# Copie o arquivo de variáveis de ambiente de exemplo
RUN cp .env.example .env

# Esta etapa não é necessária no Dockerfile, pois as imagens serão puxadas quando o docker-compose for executado
# RUN docker-compose pull

# Inicie os serviços no modo detached
CMD ["docker-compose", "up", "-d"]
