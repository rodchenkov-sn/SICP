#lang sicp

(define (fst-mul a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (define (even? x)
    (= (remainder x 2) 0))
  (define (inner acc a b)
    (cond ((= b 0) acc)
          ((even? b) (inner acc (double a) (halve b)))
          (else (inner (+ acc a) a (- b 1)))))
  (inner 0 a b))
