;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function called quadratic-root that takes as arguments a, b, and c, and computes the root of the corresponding quadratic equation.

(require rackunit)

;DATA DEFINITIONS: none

;circumference : Number -> Number
;GIVEN: the radius r of a circle 
;RETURNS: its circumference, using the formula 2 * pi * r.
;EXAMPLES:
;(circumference 1)  =>  6.283185307179586 
;(circumference 0)  =>  0

;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (circumference r)
  (* 2 pi r))

(circumference 1)
(circumference 0)


;TESTS:
(define-test-suite new-test
(check-equal? (circumference 1) 6.285 "Circumference of circle with radius 1 is 6.285")
(check-equal? (circumference 0) 0 "Circumference of circle with radius 1 is 6.285"))