# Usar uma imagem base com Docker Compose
FROM docker/compose:1.29.2

# Instalar Git
RUN apk add --no-cache git

# O restante do seu Dockerfile...
RUN git clone --depth 1 https://github.com/supabase/supabase
WORKDIR /supabase/docker
RUN cp .env.example .env
CMD ["docker-compose", "up", "-d"]
