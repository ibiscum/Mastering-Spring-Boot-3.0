package com.packt.ahmeric.reactivesample;

import com.packt.ahmeric.reactivesample.model.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.server.LocalServerPort;
import org.springframework.http.MediaType;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.web.reactive.server.WebTestClient;

import static org.junit.jupiter.api.Assertions.assertNotNull;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@DirtiesContext(classMode = DirtiesContext.ClassMode.AFTER_EACH_TEST_METHOD)
class UserControllerIntegrationTest {

    @LocalServerPort
    private int port;

    private WebTestClient webTestClient;

    @BeforeEach
    void setUp() {
        this.webTestClient = WebTestClient.bindToServer()
                .baseUrl("http://localhost:" + port)
                .build();
    }

    @Test
    void getAllUsers_shouldReturnInitialUsers() {
        webTestClient.get()
                .uri("/users")
                .accept(MediaType.APPLICATION_JSON)
                .exchange()
                .expectStatus().isOk()
                .expectHeader().contentTypeCompatibleWith(MediaType.APPLICATION_JSON)
                .expectBodyList(User.class)
                .hasSize(10000);
    }

    @Test
    void getUserById_existingUser_shouldReturnUser() {
        webTestClient.get()
                .uri("/users/{id}", 1)
                .accept(MediaType.APPLICATION_JSON)
                .exchange()
                .expectStatus().isOk()
                .expectHeader().contentTypeCompatibleWith(MediaType.APPLICATION_JSON)
                .expectBody()
                .jsonPath("$.id").isEqualTo(1)
                .jsonPath("$.email").isEqualTo("user1@example.com");
    }

    @Test
    void getUserById_missingUser_shouldReturnNotFound() {
        webTestClient.get()
                .uri("/users/{id}", 9999)
                .exchange()
                .expectStatus().isNotFound();
    }

    @Test
    void createUser_validUser_shouldReturnOk() {
        User newUser = new User(null, "New User", "newuser@example.com");

        webTestClient.post()
                .uri("/users")
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(newUser)
                .exchange()
                .expectStatus().isOk()
                .expectHeader().contentTypeCompatibleWith(MediaType.APPLICATION_JSON)
                .expectBody()
                .jsonPath("$.id").isNumber()
                .jsonPath("$.name").isEqualTo("New User")
                .jsonPath("$.email").isEqualTo("newuser@example.com");
    }

    @Test
    void createUser_duplicateEmail_shouldReturnConflict() {
        User duplicateUser = new User(null, "Duplicate User", "user1@example.com");

        webTestClient.post()
                .uri("/users")
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(duplicateUser)
                .exchange()
                .expectStatus().isEqualTo(409);
    }

    @Test
    void createUser_invalidInput_shouldReturnBadRequest() {
        User invalidUser = new User(null, "", "");

        webTestClient.post()
                .uri("/users")
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(invalidUser)
                .exchange()
                .expectStatus().isBadRequest();
    }

    @Test
    void deleteUser_existingUser_shouldReturnNoContent() {
        User createdUser = new User(null, "Delete User", "delete-user@example.com");

        User savedUser = webTestClient.post()
                .uri("/users")
                .contentType(MediaType.APPLICATION_JSON)
                .bodyValue(createdUser)
                .exchange()
                .expectStatus().isOk()
                .expectBody(User.class)
                .returnResult()
                .getResponseBody();

        assertNotNull(savedUser);
        Long createdId = savedUser.id();

        webTestClient.delete()
                .uri("/users/{id}", createdId)
                .exchange()
                .expectStatus().isNoContent();
    }

    @Test
    void streamUsers_shouldReturnFluxStream() {
        webTestClient.get()
                .uri("/users/stream")
                .accept(MediaType.APPLICATION_JSON)
                .exchange()
                .expectStatus().isOk()
                .expectHeader().contentTypeCompatibleWith(MediaType.APPLICATION_JSON)
                .expectBodyList(User.class)
                .hasSize(10000);
    }
}
