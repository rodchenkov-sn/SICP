#lang sicp

(define (cube-root x)
  (define (improve guess x)
    (/ (+ (/ x (* guess guess))
          (* 2.0 guess))
       3.0))
  (define (good? guess old-guess)
    (< (abs (- (/ guess old-guess) 1)) 0.01))
  (define (inner guess old-guess x)
    (cond ((good? guess old-guess) guess)
          (else (inner (improve guess x) guess x))))
  (inner 1.0 x x))
