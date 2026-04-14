;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 nested-structure-expressions|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; An address is (make-address Number String)
(define-struct address (number street))

(define luddy (make-address 700 "Woodlawn Ave"))
(make-address 1 "Main St")
(address-number (make-address 1 "Main St"))
(+ 1 (address-number (make-address 1 "Main St")))
(make-address (+ 1 (address-number (make-address 1 "Main St")))
              "Main St")
(make-address (+ 1 (address-number (make-address 1 "Main St")))
              (address-street (make-address 1 "Main St")))

(define our-house (make-address 1 "Main St"))
(make-address (+ 1 (address-number our-house))
              (address-street our-house))

(define here  (make-address 30 "Main St"))
(define there (make-address 70 "Penny Ln"))

; A Person is (make-person String Number)
(define-struct person [name age])
(define me  (make-person "Alice" 37))
(define you (make-person "Bob"   22))
(- (address-number there) (address-number here))

; Exercise 5
; Copy the expressions below into your Definitions Window.
; What are their results? Try to predict the results before asking DrRacket.
; (If it runs into an error, write “error” after the last step.)
;   (- (address-number there) (address-number here))
; = ???
; = ...
(- (address-number there) (address-number here))
(- (address-number (make-address 70 "Penny Ln")) (address-number here))
(- (address-number (make-address 70 "Penny Ln")) (address-number here))
(- 70 (address-number here))
(- 70 (address-number (make-address 30 "Main St")))
(- 70 30)
40

;   (< (person-age me) (person-age you))
; = ???
; = ...
(< (person-age me) (person-age you))
(< (person-age (make-person "Alice" 37)) (person-age you))
(< 37 (person-age you))
(< 37 (person-age (make-person "Bob" 22)))
(< 37 22)
#false
     
;   (address-number (address-number there))
; = ???
; = ...
; (address-number (address-number there))
; (address-number (address-number (make-address 70 "Penny Ln")))
; (address-number 70)
; error
     
;   (person-age (make-person "Carol" 21))
; = ???
(person-age (make-person "Carol" 21))
21
     
;   (make-person (person-name me) (+ 1 (person-age me)))
; = ???
(make-person (person-name me) (+ 1 (person-age me)))
(make-person (person-name (make-person "Alice" 37)) (+ 1 (person-age me)))
(make-person "Alice" (+ 1 (person-age me)))
(make-person "Alice" (+ 1 (person-age (make-person "Alice" 37))))
(make-person "Alice" (+ 1 37))
(make-person "Alice" 38)

; Show step-by-step calculations by adding comments. Use the Stepper to confirm that your steps are correct.