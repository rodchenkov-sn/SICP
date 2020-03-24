#lang racket

(require "2.rkt")

(define (length segment)
   (let ((sx (x-coord (start-point segment)))
         (sy (y-coord (start-point segment)))
         (ex (x-coord (end-point segment)))
         (ey (y-coord (end-point segment))))
      (sqrt (+ (sqr (- sx ex))
               (sqr (- sy ey))))))

(define (valid-rectangle? h w)
  (and (perpendicular? h w)
       (has-common-root? h w)))

(define (make-rectangle h w)
  (if (valid-rectangle? h w)
      (cons h w)
      (error "invalid rectangle")))
(define height car)
(define width cdr)

(define (area rectangle)
  (* (length (height rectangle))
     (length (width rectangle))))

(define (perimeter rectangle)
  (+ (* 2 (height rectangle))
     (* 2 (width rectangle))))
