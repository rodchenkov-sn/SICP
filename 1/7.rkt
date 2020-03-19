#lang sicp

(define (sqrt x)
  (define (improve guess x)
    (avg guess (/ x guess)))
  (define (avg a b)
    (/ (+ a b) 2.0))
  (define (good? guess old-guess)
    (< (abs (- (/ guess old-guess) 1)) 0.01))
  (define (inner guess old-guess x)
    (cond ((good? guess old-guess) guess)
          (else (inner (improve guess x) guess x))))
  (inner 1.0 x x))
