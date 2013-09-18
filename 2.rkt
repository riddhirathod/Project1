;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;To write an expression that tests if the result of 100/3 is greater than the result of (100 + 3) / (3 + 3)

;DATA DEFINITIONS:none

;GIVEN: Two expressions
;RETURN: The greater expression is found

;DESIGN STRATEGY:Domain Knowledge
(cond 
  [(> (/ 100 3) (/ (+ 100 3) (+ 3 3))) "First expreesion is greater"]
  [else "Second Expression is greater"])