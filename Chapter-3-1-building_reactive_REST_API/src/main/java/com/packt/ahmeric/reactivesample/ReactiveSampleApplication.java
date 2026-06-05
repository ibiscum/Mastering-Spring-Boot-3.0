package com.packt.ahmeric.reactivesample;

import io.r2dbc.spi.ConnectionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.r2dbc.core.DatabaseClient;
import reactor.core.publisher.Mono;

@SpringBootApplication
public class ReactiveSampleApplication {

    private static final Logger log = LoggerFactory.getLogger(ReactiveSampleApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(ReactiveSampleApplication.class, args);
    }

    @Bean
    ApplicationRunner databaseInitializationLogger(ConnectionFactory connectionFactory) {
        return args -> {
            DatabaseClient client = DatabaseClient.create(connectionFactory);
            Long userCount = client.sql("SELECT COUNT(*) FROM users")
                    .map((row, rowMetadata) -> row.get(0, Long.class))
                    .one()
                    .onErrorResume(error -> {
                        log.error("Database initialization verification failed", error);
                        return Mono.just(-1L);
                    })
                    .block();
            log.info("Database initialization check: users table row count = {}", userCount);
        };
    }
}
