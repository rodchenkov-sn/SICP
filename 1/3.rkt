#lang sicp

(define (square x)
  (* x x))

(define (sum-of-max-squares a b c)
  (cond ((and (<= a b) (<= a c)) (+ (square b) (square c)))
        ((and (<= b a) (<= b c)) (+ (square a) (square c)))
        (else (+ (square a) (square b)))))
