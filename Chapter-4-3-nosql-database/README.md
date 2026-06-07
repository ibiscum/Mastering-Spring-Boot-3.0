# 4-3 - No-SQL Database

    mvn -N wrapper:wrapper -Dmaven=3.9.15
    ./mvnw clean install -U
    ./mvnw spring-boot:run

    docker run -t --rm -v ${PWD}:/app zavoloklom/dclint .

    ./gradlew bootRun

    curl -v http://localhost:8080/books
    curl -v http://localhost:8080/reviews -H "Content-Type: application/json" -d '{"bookId": 1, "reviewerName": "Reader", "comment": "A great book to read", "rating": 5}'
