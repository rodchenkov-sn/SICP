#lang sicp

(define (pascal r c)
  (cond ((or (= c 1) (= r 1)) 1)
        ((or (< c 1) (< r 1)) 0)
        (else (+ (pascal (- r 1) (- c 1))
                 (pascal (- r 1) c)))))
