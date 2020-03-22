#lang sicp

(define (cont-frac n d k)
  (define (inner i res)
    (cond ((zero? i) res)
          (else (inner (dec i) (/ (n i) (+ (d i) res))))))
  (inner (dec k) (/ (n k) (d k))))

(define (phi n)
  (/ 1.0
     (cont-frac (lambda (i) 1.0)
                (lambda (i) 1.0)
                n)))
