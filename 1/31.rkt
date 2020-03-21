#lang sicp

(define (product term a next b)
  (define (inner x acc)
    (cond ((> x b) acc)
          (else (inner (next x) (* acc (term x))))))
  (inner a 1))

(define (id x)
  x)

(define (inc x)
  (+ x 1))

(define (factorial x)
  (product id 1 inc x))

(define (pi n)
  (define (even? x)
    (= (remainder x 2) 0))
  (define (num-term k)
    (cond ((even? k) (* 2.0 (+ (/ k 2) 1)))
          (else (num-term (+ k 1)))))
  (define (den-term k)
    (cond ((even? k) (+ 1 (num-term k)))
          (else (den-term (- k 1)))))
  (* (/ (product num-term 0 inc n) (product den-term 0 inc n)) 4))
