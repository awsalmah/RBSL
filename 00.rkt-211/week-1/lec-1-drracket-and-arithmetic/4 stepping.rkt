;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4 stepping|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Stepping

;; It can be hard to keep track of how complicated chains work.
;; It can be useful to write the results of operations step by step.

;; remaining cash
(- 100 (+ 25 20))
;; = (- 100 45)
;; = 55

;; favorite ice cream flavor
(- (* 5 4) 1)
;; = (- 20 1)
;; = 19

;; For simple formulas, there is a way to see the chain.
;; The stepper (step button) enables us to look at the formulas in the definitions window.
;; It shows you what is going to change step by step.

;; Exercise 10
;; Show step-by-step calculations for your formula for Exercise 5.
;; Show step-by-step calculations for your formula for Exercise 6.
;; Use the Stepper to confirm that your step-by-step calculations are correct.

; Exercise 5
(* 10 (+ 123 456))
;; = (* 10 (579))
;; = 5790

; Exercise 6
(+ (+ 123 456) 789)
;; = (+ 579 789)
;; = 1368