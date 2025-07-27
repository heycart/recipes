#syntax=docker/dockerfile:1.4

# pin versions
FROM heycart/docker-base:8.3 AS base-image
FROM heycart/heycart-cli:latest-php-8.3 AS heycart-cli

# build

FROM heycart-cli AS build

ARG HEYCART_PACKAGES_TOKEN

ADD . /src
WORKDIR /src

RUN --mount=type=secret,id=composer_auth,dst=/src/auth.json \
    --mount=type=cache,target=/root/.composer \
    --mount=type=cache,target=/root/.npm \
    /usr/local/bin/entrypoint.sh heycart-cli project ci /src

# build final image

FROM base-image

COPY --from=build --chown=82 --link /src /var/www/html
