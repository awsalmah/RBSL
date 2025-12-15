;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 drracket as a calculator|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; DrRacket as a calculator

;; To use DrRacket as a calculator, go to the bottom half of DrRacket (the REPL/interactions window)
;; and enter something you want to calculate.
25

;; Here is how you make any operation happen in BSL
(- 25 20)
(+ 25 20)
(* 25 20)
(/ 25 20)

;; Exercise 3
;; Use the Beginning Student language to add the numbers 123 and 456 together.
(+ 123 456)

;; Exercise 4
;; Use the Beginning Student language to add the numbers 123, 456, and 789 together. (Hint: the + operation can take more than 2 inputs at once.)
(+ 123 456 789)