# Chapter 4.2 - Spring Data with SQL

    gradle wrapper --gradle-version latest

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    ./gradlew bootRun

    curl -v http://localhost:8080/books
    curl -v http://localhost:8080/publishers -H "Content-Type: application/json" -d '{"name": "Publisher Name", "address": "Address of the publisher"}'
    curl -v http://localhost:8080/authors -H "Content-Type: application/json" -d '{"name": "Author Name", "biography": "A long story", "publisher": {"id": 1}}'
    curl -v http://localhost:8080/books -H "Content-Type: application/json" -d '{"title": "Book title", "isbn": "12345", "authors": [{ "id": 1}]}'