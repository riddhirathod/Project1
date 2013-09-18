;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function called tip that takes two arguments, a number representing the amount of a bill in dollars, and a decimal number between 0.0 and 1.0, representing the percentage of tip one wants to give. 

(require rackunit)

;DATA DEFINITIONS: none

;tip : NonNegNumber Number[0.0,1.0] -> Number
;GIVEN: the amount of the bill in dollars and the percentage of tip
;RETURNS: the amount of the tip in dollars.
;EXAMPLES:
;(tip 10 0.15)  => 1.5
;(tip 20 0.17)  => 3.4
;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (tip x y)
  (cond
    [(<= y 0) "Tip percent cannot be less than or equal to 0. It's value has to be between 0 and 1"]
    [(and (> y 0) (< y 1)) (* x y)]
    [(>= y 1) "Tip percent cannot be more than or equal to 1. It's value has to be between 0 and 1"]))

(tip 10 0.15)
(tip 20 0.17)
(tip 10 -1)
(tip 10 1.17)

;TESTS:
(define-test-suite new-test
(check-equal? (tip 10 0.15) 1.5 "Tip amount is equal to $1.5")
(check-equal? (tip 20 0.17) 3.4 "Tip amount is equal to $3.4")  
(check-equal? (tip 10 -1) 0 "Tip percent has to be between 0 and 1")
(check-equal? (tip 10 1.5) 0 "Tip percent has to be between 0 and 1"))