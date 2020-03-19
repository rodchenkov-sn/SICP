#lang sicp

(define (fst-exp x n)
  (define (square x)
    (* x x))
  (define (even? x)
    (= (remainder x 2) 0))
  (define (inner acc x n)
    (cond ((= n 0) acc)
          ((even? n) (inner acc (square x) (/ n 2)))
          (else (inner (* acc x) x (- n 1)))))
  (inner 1 x n))
