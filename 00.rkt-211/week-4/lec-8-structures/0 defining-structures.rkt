;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 defining-structures|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lecture 8 : Structures
; Defining structures

; Below is one example of a data definition:
; An Address is (make-address Number String)
(define-struct address (number street))

(make-address 700 "Woodlawn Ave")
(make-address 1600 "Pennsylvania Ave")

(address-number (make-address 700 "Woodlawn Ave"))
(address-number (make-address 1600 "Pennsylvania Ave"))

(address-street (make-address 700 "Woodlawn Ave"))
(address-street (make-address 1600 "Pennsylvania Ave"))

; A Point is (make-point Number Number)
(define-struct point (x y))

(make-point 1 2)
(make-point 100 0)

(point-x (make-point 1 2))
(point-x (make-point 1 20))

; Exercise 1
; Copy the definitions below into your Definitions Window.
; Make sure you know which lines are data definitions,
; which lines are structure definitions, and which lines are constant definitions.

; An Address is (make-address Number String)
; (define-struct address [number street])
(define here  (make-address 30 "Main St"))
(define there (make-address 70 "Penny Ln"))
     
; A Person is (make-person String Number)
(define-struct person [name age])
(define me  (make-person "Alice" 37))
(define you (make-person "Bob"   22))

; Then, copy the expressions below into your Definitions Window.
; What are their results? Try to predict the results before asking DrRacket.
; (If it runs into an error, write “error” after the last step.)

; Exercise 1
     
;   (address-street there)
; = (address-street (make-address 70 "Penny Ln"))
; = ???
"Penny Ln"

;   (address-number here)
; = ???
; = ...
; (address-number (make-address 30 "Main St"))
30

;   (person-name you)
; = ???
; = ...
; (person-name (make-person "Bob" 22))
"Bob"

;   (address-street me)
; = ???
; = ...
; (address-street (make-person "Alice" 37))
; error

;   (make-person "Carol" 21)
; = ???
(make-person "Carol" 21)

; Show step-by-step calculations by adding comments. Use the Stepper to confirm that your steps are correct.