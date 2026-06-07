# 6-1 - Unit Integration Test

    mvn -N wrapper:wrapper -Dmaven=3.9.15
    ./mvnw clean install -U
    ./mvnw spring-boot:run

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    docker run -p 127.0.0.1:8180:8080 -e KC_BOOTSTRAP_ADMIN_USERNAME=admin -e KC_BOOTSTRAP_ADMIN_PASSWORD=admin keycloak/keycloak:26.6 start-dev
