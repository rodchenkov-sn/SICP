#lang sicp

(define (accumulate combiner null-value term a next b)
  (define (inner curr acc)
    (cond ((> curr b) acc)
          (else (inner (next curr) (combiner acc (term curr))))))
  (inner a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))
