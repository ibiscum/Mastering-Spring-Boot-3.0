package com.packt.ahmeric.bookstore.controller;


import com.packt.ahmeric.bookstore.data.Review;
import com.packt.ahmeric.bookstore.repositories.ReviewRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/reviews")
@RequiredArgsConstructor
public class ReviewController {
    private final ReviewRepository reviewRepository;

    @PostMapping
    public ResponseEntity<Review> addReview(@RequestBody Review review) {
        if (review == null) {
            return ResponseEntity.badRequest().build();
        }
        Review savedReview = reviewRepository.save(review);
        return ResponseEntity.ok(savedReview);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Review> getReview(@PathVariable @NonNull String id) {
        Optional<Review> review = reviewRepository.findById(id);
        return review.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
    }

    @GetMapping
    public List<Review> getAllReviews() {
        return reviewRepository.findAll();
    }

    @PutMapping("/{id}")
    public ResponseEntity<Review> updateReview(@PathVariable @NonNull String id, @RequestBody Review reviewDetails) {
        if (reviewDetails == null) {
            return ResponseEntity.badRequest().build();
        }
        return reviewRepository.findById(id)
                .map(existingReview -> {
                    existingReview.setBookId(reviewDetails.getBookId());
                    existingReview.setReviewerName(reviewDetails.getReviewerName());
                    existingReview.setComment(reviewDetails.getComment());
                    existingReview.setRating(reviewDetails.getRating());
                    Review updatedReview = reviewRepository.save(existingReview);
                    return ResponseEntity.ok(updatedReview);
                })
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Object> deleteReview(@PathVariable @NonNull String id) {
        return reviewRepository.findById(id)
                .map((@NonNull Review review) -> {
                    reviewRepository.delete(review);
                    return ResponseEntity.ok().build();
                })
                .orElseGet(() -> ResponseEntity.notFound().build());
    }
}
