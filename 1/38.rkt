#lang sicp

(define (cont-frac n d k)
  (define (inner i)
    (cond ((equal? i k) (/ (n i) (d i)))
          (else (/ (n i) (+ (d i) (inner (inc i)))))))
  (inner 1))

(define (euler n)
  (define (div-three? n)
    (zero? (remainder n 3)))
  (+ 2.0
     (cont-frac (lambda (i) 1.0)
                (lambda (i)
                  (cond
                    ((div-three? (- i 2))
                     (* 2.0 (+ 1 (/ (- i 2) 3))))
                    (else
                     1.0)))
                n)))
