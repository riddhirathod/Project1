;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To define a function that converts a temperature from degrees Fahrenheit to degrees Celcius

(require rackunit)

;DATA DEFINITIONS: none

; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celcius.

; EXAMPLES:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778

;DESIGN STRATEGY: Domain Knowledge

;FUNCTION DEFINITION:
(define (f->c x)
  (* (- x 32) (/ 5 9)))

;TESTS:
(define-test-suite new-test
(check-equal? (f->c 32) 0 "32 Fahrenheit should be 0 Celsius")
(check-equal? (f->c 212) 100 "212 Fahrenheit should be 100 Celsius"))
