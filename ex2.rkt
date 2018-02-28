#lang racket

;ex1.6
(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- 
           (square guess) 
           x))
     0.0001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 36)

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x)
                         x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

;(sqrt 24)
(new-sqrt 24)
;(sqrt 2400000000000)

;ex1.7


;ex1.8

