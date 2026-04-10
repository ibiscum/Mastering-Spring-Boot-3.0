# Chapter 5.2 - Implementing OAuth2 JWT

    gradle wrapper --gradle-version latest

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    docker run -p 127.0.0.1:8180:8080 -e KC_BOOTSTRAP_ADMIN_USERNAME=admin -e KC_BOOTSTRAP_ADMIN_PASSWORD=admin keycloak/keycloak:26.6 start-dev

    curl -v http://localhost:8080/books
