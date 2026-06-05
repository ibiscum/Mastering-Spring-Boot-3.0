package com.packt.ahmeric.reactivesample.controller;

import com.packt.ahmeric.reactivesample.exceptions.EmailUniquenessException;
import com.packt.ahmeric.reactivesample.model.User;
import com.packt.ahmeric.reactivesample.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/users")
public class UserController {

    private static final Logger log = LoggerFactory.getLogger(UserController.class);
    private final UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    public Flux<User> getAllUsers() {
        long start = System.currentTimeMillis();
        return userRepository.findAll()
                .doOnSubscribe(subscription -> log.debug("Subscribed to User stream!"))
                .doOnNext(user -> log.debug("Processed User: {} in {} ms", user.name(), System.currentTimeMillis() - start))
                .doOnComplete(() -> log.info("Finished streaming users for getAllUsers in {} ms", System.currentTimeMillis() - start));
    }

    @GetMapping("/{id}")
    public Mono<ResponseEntity<User>> getUserById(@PathVariable Long id) {
        return userRepository.findById(id)
                .map(ResponseEntity::ok)
                .defaultIfEmpty(ResponseEntity.notFound().build())
                .doOnError(error -> log.error("Error finding user", error));
    }

    @PostMapping
    public Mono<ResponseEntity<User>> createUser(@RequestBody User user) {
        if (user == null || !StringUtils.hasText(user.name()) || !StringUtils.hasText(user.email())) {
            log.warn("Invalid user creation request: {}", user);
            return Mono.just(ResponseEntity.badRequest().build());
        }

        return userRepository.findByEmail(user.email())
                .hasElement()
                .flatMap(emailExists -> {
                    if (emailExists) {
                        return Mono.error(new EmailUniquenessException("Email already exists!"));
                    }
                    return userRepository.save(user);
                })
                .map(ResponseEntity::ok)
                .doOnNext(savedUser -> log.info("New user created: {}", savedUser))
                .onErrorResume(EmailUniquenessException.class,
                        e -> Mono.just(ResponseEntity.status(HttpStatus.CONFLICT).build()))
                .onErrorResume(e -> {
                    log.error("Unexpected error creating user", e);
                    return Mono.just(ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build());
                });
    }

    @DeleteMapping("/{id}")
    public Mono<ResponseEntity<Void>> deleteUser(@PathVariable Long id) {
        return userRepository.existsById(id)
                .flatMap(exists -> {
                    if (exists) {
                        return userRepository.deleteById(id)
                                .then(Mono.just(ResponseEntity.noContent().<Void>build()));
                    }
                    return Mono.just(ResponseEntity.notFound().<Void>build());
                })
                .doOnError(error -> log.error("Error deleting user", error))
                .onErrorResume(e -> {
                    log.error("Exception during delete operation", e);
                    return Mono.just(ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build());
                });
    }

    @GetMapping("/stream")
    public Flux<User> streamUsers() {
        long start = System.currentTimeMillis();
        return userRepository.findAll()
                .onBackpressureBuffer()
                .doOnNext(user -> log.debug("Processed User: {} in {} ms", user.name(), System.currentTimeMillis() - start))
                .doOnError(error -> log.error("Error streaming users", error))
                .doOnComplete(() -> log.info("Finished streaming users for streamUsers in {} ms", System.currentTimeMillis() - start));
    }
}
