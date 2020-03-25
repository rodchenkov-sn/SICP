#lang sicp

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeat f n)
  (define (inner i g)
    (cond ((zero? i) g)
          (else (inner (dec i) (compose g f)))))
  (inner (dec n) f))

(define zero (lambda (f) (lambda (x) x)))
(define one (lambda (f) (lambda (x) (f x))))
(define two (lambda (f) (lambda (x) (f (f x)))))

(define (succ n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(define (add a b)
  (lambda (f) (lambda (x) ((a f) ((b f) x)))))

(define (to-church n)
  (lambda (f) (lambda (x) ((repeat f n) x))))

(define (to-int c)
  ((c inc) 0))
