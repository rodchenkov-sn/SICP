#lang racket

(define (consi a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (reduce num divisor)
  (if (zero? (remainder num divisor))
      (reduce (/ num divisor) divisor)
      num))

(define (cari p)
  (exact-round (log (reduce p 3) 2)))

(define (cdri p)
  (exact-round (log (reduce p 2) 3)))
