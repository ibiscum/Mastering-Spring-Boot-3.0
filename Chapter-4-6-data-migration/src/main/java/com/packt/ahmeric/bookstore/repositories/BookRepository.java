package com.packt.ahmeric.bookstore.repositories;

import com.packt.ahmeric.bookstore.data.Book;

import java.util.Optional;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends JpaRepository<Book, Long> {

    @Override
    @Cacheable( "books")
    @NonNull
    Optional<Book> findById(@NonNull Long id);
}
