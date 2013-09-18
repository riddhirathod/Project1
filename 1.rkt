;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To compute the number of seconds in a leap year 

(require rackunit)

;Seconds_in_a_year: Number-> Number
;GIVEN: Number of days in a year
;RETURN: Number of seconds in a year

;EXAMPLES:
;(days 365 -> 31536000 )
;(days 366 -> 31622400 )
;DESIGN STRATEGY: Domain Knowledge
;FUNCTION DEFINITON:
(define (days d)
  (* d 24 60 60))

(days 366)

;TESTS:
(define-test-suite new-test
(check-equal? (days 365) 31536000 "Number of seconds in a normal year are 31536000")
(check-equal? (days 366) 31622400 "Number of seconds in a normal year are 31622400"))
