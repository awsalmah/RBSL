;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1 nesting-posn-operations|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A Posn is (make-posn Number Number)
; make-posn : Number Number -> Posn
; posn-x : Posn -> Number
; posn-y : Posn -> Number
(define here (make-posn 30 50))
(define there (make-posn 70 45))

(posn-y here)
(+ 1 (posn-y here))
(make-posn (posn-x here) (+ 1 (posn-y here)))

; Exercise 3
; Copy the expressions below into your Definitions Window.
; What are their results? Try to predict the results before asking DrRacket.
; (If it runs into an error, write “error” without quotes at the end.)

; Exercise 3
     
;   (+ 1 (posn-y there))
; = (+ 1 (posn-y (make-posn 70 45)))
; = ???
; = ...
(+ 1 45)
46

;   (+ 1 there)
; = ???
; = ...
; error

;   (- (posn-x there) (posn-x here))
; = ???
; = ...
(- (posn-x (make-posn 70 45)) (posn-x here))
(- (posn-x (make-posn 70 45)) (posn-x (make-posn 30 50)))
(- 70 (posn-x (make-posn 30 50)))
(- 70 30)

;   (make-posn (posn-x there) (posn-y here))
; = ???
; = ...
(make-posn (posn-x (make-posn 70 45)) (posn-y here))
(make-posn (posn-x (make-posn 70 45)) (posn-y (make-posn 30 50)))
(make-posn 70 (posn-y (make-posn 30 50)))
(make-posn 70 50)

;   (posn-y (posn-x here))
; = ???
; = ...
; (posn-y (posn-x (make-posn 30 50)))
; (posn-y 30)
; error


; Show step-by-step calculations by adding comments. Use the Stepper to confirm that your steps are correct.