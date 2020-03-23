#lang sicp

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeat f n)
  (define (inner i g)
    (cond ((zero? i) g)
          (else (inner (dec i) (compose g f)))))
  (inner (dec n) f))
