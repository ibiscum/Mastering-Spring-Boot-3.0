package com.packt.ahmeric.bookstore.controller;

import com.packt.ahmeric.bookstore.data.Author;
import com.packt.ahmeric.bookstore.repositories.AuthorRepository;


import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/authors")

@RequiredArgsConstructor
public class AuthorController {
    private final AuthorRepository authorRepository;

    @PostMapping
    public ResponseEntity<Author> addBook(@RequestBody @NonNull Author author) {
        Author savedAuthor = authorRepository.save(author);
        return ResponseEntity.ok(savedAuthor);
    }

    @GetMapping("/{id}")
    public @Nullable ResponseEntity<Author> getBook(@PathVariable @NonNull Long id) {
        Optional<Author> author = authorRepository.findById(id);
        return author.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<Author> getAllAuthors() {
        return authorRepository.findAll();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Author> updateAuthor(@PathVariable @NonNull Long id, @RequestBody @NonNull Author author) {
        return authorRepository.findById(id)
                .map(existingAuthor -> {
                    existingAuthor.setName(author.getName());
                    existingAuthor.setBiography(author.getBiography());
                    existingAuthor.setPublisher(author.getPublisher());
                    Author updatedAuthor = authorRepository.save(existingAuthor);
                    return ResponseEntity.ok(updatedAuthor);
                })
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Object> deleteAuthor(@PathVariable @NonNull Long id) {
        return authorRepository.findById(id)
                .map((@NonNull Author author) -> {
                    authorRepository.delete(author);
                    return ResponseEntity.ok().build();
                })
                .orElseGet(() -> ResponseEntity.notFound().build());
    }
}
