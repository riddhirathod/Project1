;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function called quadratic-root that takes as arguments a, b, and c, and computes the root of the corresponding quadratic equation.

(require rackunit)

;DATA DEFINITIONS: none

;quadratic-root: Number Number Number -> Number
;GIVEN: Three numbers that will compute the quadratic root
;RETURNS: Quadratic root 
;EXAMPLES:
;(quadratic-root 1 4 4 ) => -2
;(quadratic-root 1 -6 9) => 3 

;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (quadratic-root a b c)
  (/ (+(- 0 b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a)))

(quadratic-root 1 4 4 )
(quadratic-root 1 -6 9 )

;TESTS:
(define-test-suite new-test
(check-equal? (quadratic-root 1 4 4 ) -2 "Quadratic root with the given arguements is -2")
(check-equal? (quadratic-root 1 -6 4 ) 3 "Quadratic root with the given arguements is 3"))