#lang sicp

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (deriv g)
  (let ((dx 0.00001))
    (lambda (x) (/ (- (g (+ x dx)) (g x)) dx))))

(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try-guess guess)
    (let ((next (f guess)))
      (if (close-enough? next guess)
          next
          (try-guess next))))
  (try-guess first-guess))

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x)
       (* a (* x x))
       (* b x)
       c)))

;; can use (newtons-method (cubic -4 6 -24) 1) to get ~4
