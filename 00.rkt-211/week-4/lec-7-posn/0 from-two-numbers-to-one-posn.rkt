;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 from-two-numbers-to-one-posn|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lecture 7 : Posn
; From two numbers to one Posn

; A World is a Number
; A World is a TrafficLight
; A World is a Number Number -- x
; (big-bang

; A Posn is (make-posn Number Number) <-- data definition
; make-posn : Number Number -> Posn
(make-posn 12 34)
(make-posn -56 7.8)
(make-posn 1 3)
(make-posn 4 2)

(define here (make-posn 30 50))
(define there (make-posn 70 45))

; to get the numbers back from the posn:
; posn-x : Posn -> Number
(posn-x here)
(posn-x there)
(posn-x (make-posn 12 34))

; posn-y : Posn -> Number
(posn-y here)
(posn-y there)
(posn-y (make-posn 56 78))

; Exercise 1
; Copy the code below into your Definitions Window.

; Exercise 1
     
; The line below is a
; A Posn is (make-posn Number Number)
     
; The line below is a
; make-posn : Number Number -> Posn
     
; The line below is a
; posn-x : Posn -> Number
     
; The line below is a
; posn-y : Posn -> Number
     
; The line below is a
;    (define here (make-posn 30 50))
     
; The line below is a
;    (define there (make-posn 70 45))

; At the end of each line “; The line below is a”,
; write one of the following phrases:

; constant definition

; variable definition

; function definition

; data definition

; signature

; Don’t change anything else you copy.

; Exercise 2
; Copy the expressions below into your Definitions Window. What are their results? Try to predict the results before asking DrRacket.

; Exercise 2
     
;   (posn-x there)
; = (posn-x (make-posn 70 45))
; = ???
70     
;   (posn-y here)
; = ???
; = ...
; (posn-y (make-posn 30 50))
50

; Show step-by-step calculations by adding comments. Use the Stepper to confirm that your steps are correct.

