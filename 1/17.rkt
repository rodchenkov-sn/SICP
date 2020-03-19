#lang sicp

(define (fst-mul a b)
  (define (double x)
    (+ x x))
  (define (halve x)
    (/ x 2))
  (define (even? x)
    (= (remainder x 2) 0))
  (cond ((= b 0) 0)
        ((even? b) (double (fst-mul a (halve b))))
        (else (+ a (fst-mul a (- b 1))))))
