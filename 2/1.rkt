#lang sicp

(define (make-rat num den)
  (let ((g (gcd (abs num) (abs den))))
  (if (negative? (* num den))
      (cons (/ (* -1 (abs num)) g) (/ (abs den) g))
      (cons (/ (abs num) g) (/ (abs den) g)))))

(define num car)
(define den cdr)

(define (display-rat rat)
  (display (num rat))
  (display "/")
  (display (den rat))
  (newline))

(define (mul-rat a b)
  (make-rat (* (num a) (num b))
            (* (den a) (den b))))
