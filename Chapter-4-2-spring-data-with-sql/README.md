# 4-2 - Spring Data with SQL

    mvn -N wrapper:wrapper -Dmaven=3.9.15
    ./mvnw clean install -U
    ./mvnw spring-boot:run

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    curl -v http://localhost:8080/books
    curl -v http://localhost:8080/publishers -H "Content-Type: application/json" -d '{"name": "Publisher Name", "address": "Address of the publisher"}'
    curl -v http://localhost:8080/authors -H "Content-Type: application/json" -d '{"name": "Author Name", "biography": "A long story", "publisher": {"id": 1}}'
    curl -v http://localhost:8080/books -H "Content-Type: application/json" -d '{"title": "Book title", "isbn": "12345", "authors": [{ "id": 1}]}'
