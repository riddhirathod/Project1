;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function called sq that computes the square of a number. 

(require rackunit)

;DATA DEFINITIONS: none

;sq: Number -> Number
;GIVEN: Number whose square is to be computed
;RETURNS: Square of the given number
;EXAMPLES:
;(sq -4)  => 16
;(sq 0)  => 0
;(sq 5)  => 25

;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (sq x)
  (* x x))

(sq -4)
(sq 0)
(sq 5)

;TESTS:
(define-test-suite new-test
(check-equal? (sq -4) 16 "Square of -4 is 16")
(check-equal? (sq 0) 0 "Square of 0 is 0")  
(check-equal? (sq 5) 25 "Square of 5 is 25"))