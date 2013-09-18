;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function called circ-area that computes the area included in a circle of radius r, using the given formula.
(require rackunit)

;DATA DEFINITIONS: none

;circ-area : Number -> Number
;GIVEN: the radius r of a circle 
;RETURNS: its area, using the formula pi * r * r.

;EXAMPLES:
;(circ-area 1) => 3.141592653589793
;(circ-area 5) => 78.53981633974483
;(circ-area 7) => 153.93804002589985

;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (circ-area r)
  (* pi r r))


;TESTS:
(define-test-suite new-test
(check-equal? (circ-area 1) 3.141592653589793 "Area of circle with radius 1 is 3.141592653589793")
(check-equal? (circ-area 5) 78.53981633974483 "Area of circle with radius 5 is 78.53981633974483")
(check-equal? (circ-area 7) 153.93804002589985 "Area of circle with radius 7 is 153.93804002589985"))

;OUTPUT:
;> (circ-area 1)
;#i3.141592653589793
;> (circ-area 5)
;#i78.53981633974483
;> (circ-area 7)
;#i153.93804002589985
;> 