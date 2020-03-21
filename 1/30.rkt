#lang sicp

(define (sum term a next b)
  (define (inner a result)
    (if (> a b)
        result
        (inner (next a) (+ result (term a)))))
  (inner a 0))
