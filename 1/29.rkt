#lang sicp

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (integral f a b n)
  (define (inc k)
    (+ k 1))
  (define (h a b n)
    (/ (- b a) n))
  (define (even? x)
    (= (remainder x 2) 0))
  (define (term-rule k)
    (cond ((= k 0) (f a))
          ((= k n) (f b))
          ((even? k) (* 2 (f (+ a (* k (h a b n))))))
          (else (* 4 (f (+ a (* k (h a b n))))))))
  (* (/ (h a b n) 3.0) (sum term-rule 0 inc n)))
