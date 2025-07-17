#!/bin/sh

echo "Aguardando o Postgres iniciar..."

until nc -z postgres 5432; do
  sleep 1
done

echo "Postgres está no ar! Executando a aplicação..."

exec "$@"
