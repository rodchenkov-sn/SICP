#lang racket

(provide make-segment
         start-point
         end-point
         make-point
         x-coord
         y-coord
         mid-point
         display-point
         has-common-root?
         perpendicular?)

(define make-segment cons)
(define start-point car)
(define end-point cdr)

(define (x-len segment)
  (- (x-coord (end-point segment))
     (x-coord (start-point segment))))

(define (y-len segment)
  (- (y-coord (end-point segment))
     (y-coord (start-point segment))))

(define make-point cons)
(define x-coord car)
(define y-coord cdr)

(define (points-equal? p1 p2)
  (and (equal? (x-coord p1) (x-coord p2))
       (equal? (y-coord p1) (y-coord p2))))

(define (has-common-root? s1 s2)
  (let ((s1s (start-point s1))
        (s1e (end-point s1))
        (s2s (start-point s2))
        (s2e (end-point s2)))
    (or (points-equal? s1s s2s)
        (points-equal? s1s s2e)
        (points-equal? s1e s2s)
        (points-equal? s1e s2e))))

(define (perpendicular? s1 s2)
  (zero? (dot-product s1 s2)))

(define (dot-product s1 s2)
  (+ (* (x-len s1) (x-len s2))
     (* (y-len s1) (y-len s2))))

(define (mid-point segment)
    (let ((sx (x-coord (start-point segment)))
          (sy (y-coord (start-point segment)))
          (ex (x-coord (end-point segment)))
          (ey (y-coord (end-point segment))))
      (make-point (/ (+ sx ex) 2.0)
                  (/ (+ sy ey) 2.0))))

(define (display-point point)
  (display "(")
  (display (x-coord point))
  (display ", ")
  (display (y-coord point))
  (display ")"))
