;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3 comments|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Comments

;; Another thing you might want to do in the top half of the definitions window is
;; you could put text that is not a formula but just helps us understand what is
;; going on.

;; To tell the computer to ignore the text, add a single semicolon (;) in front of
;; the text you want to ignore. The ignored text is called a comment.

;; remaining cash
(- 100 (+ 25 20))

;; favorite ice cream flavor
(- (* 5 4) 1)

;; Exercise 9. In the Definitions Window, put the comments

    ; Exercise 3
    ; Exercise 4
    ; Exercise 5
    ; Exercise 6

;; above each of the 4 formulas, so that it is easy for people to see which formula is for which exercise above. These comments should be ignored by DrRacket, so make sure that when you click the Run button, the Interactions Window shows the same 4 results as before.

; Exercise 3
(+ 123 456)

; Exercise 4
(+ 123 456 789)

; Exercise 5
(* 10 (+ 123 456))

; Exercise 6
(+ (+ 123 456) 789)