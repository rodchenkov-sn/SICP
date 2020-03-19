#lang sicp

(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (f-rec (- n 2))
                 (f-rec (- n 3))))))

(define (f-iter n)
  (define (inner a b c n)
    (cond ((= n -2) a)
          ((= n -1) b)
          ((= n  0) c)
          (else (inner b c (+ a b c) (- n 1)))))
  (inner 0 1 2 (- n 2)))
