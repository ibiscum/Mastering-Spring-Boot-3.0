# Chapter 4.4 - Cache Abstraction

    gradle wrapper --gradle-version latest

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    ./gradlew bootRun

    curl -v http://localhost:8080/books
    curl -v http://localhost:8080/reviews -H "Content-Type: application/json" -d '{"bookId": 1, "reviewerName": "Reader", "comment": "A great book to read", "rating": 5}'
