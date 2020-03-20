#lang sicp

(define (fib n)
  (define (even? x)
    (= (remainder x 2) 0))
  (define (square x)
    (* x x))
  (define (inner a b p q count)
    (cond ((= count 0) b)
          ((even? count) (inner a
                                b
                                (+ (square p) (square q))
                                (+ (* 2 p q) (square q))
                                (/ count 2)))
          (else (inner (+ (* b q) (* a q) (* a p))
                       (+ (* b p) (* a q))
                       p
                       q
                       (- count 1)))))
  (inner 1 0 0 1 n))
