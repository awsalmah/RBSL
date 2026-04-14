;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1 structure-functions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A Point is (make-point Number Number)
(define-struct point (x y))

; make-point : Number Number -> Point
; point-x : Point -> Number
; point-y : Point -> Number

; point? : Anything -> Boolean
(point? (make-point 1 2))
(point? 5)
(point? "hello")


; An Address is (make-address Number String)
(define-struct address (number street))

(define luddy (make-address 700 "Woodlawn Ave"))

;make-address : Number String -> Address

;; address-number : Address -> Number
;; address-street : Address -> String

; address? : Anything -> Boolean


; Exercise 2
; Here are the four courtesy functions for the address structure we defined above. Write down their signatures.

; make-address : Number String -> address
; address-street : Address -> String
; address-number : Address -> Number
; address? : Address -> Boolean

; Exercise 3
; What are the four courtesy functions for the person structure we defined above? Write down their signatures.
; make-person : String Number -> person
; person-name : person -> String
; person-age : person -> Number
; person? : person -> Boolean

; Exercise 4
; Copy the expressions below into your Definitions Window.
; What are their results? Try to predict the results before asking DrRacket.

;   (person? me)
; = ???
; = ...
; (person? (make-person "Alice" 37))
#true

;   (person? "Alice")
; = ???
#false     

;   (person? there)
; = ???
; (person? (make-address 70 "Penny Ln"))
#false

; Show step-by-step calculations by adding comments. Use the Stepper to confirm that your steps are correct.