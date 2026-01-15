;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 the origin of parentheses|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lecture 4: The design recipe
; The origin of parentheses
(require 2htdp/image)
(require 2htdp/universe)

; Always draw a bubble around what you want to operate on.
; To save time, draw the left edge and the right edge instead of a bubble.

; DrRacket helps you visualize bubbles in 3 ways:
; - DrRacket provides gray highlighting for bubbles
; -- e.g:
(+ (* 3 0.80) (* 5 0.60) 4.00 (* 2 3.00))
; - DrRacket Indents to line up siblings
; -- e.g:
(+ (* 3 0.80)
   (* 5 0.60)
   4.00
   (* 2 3.00))
; - DrRacket highlights mistmatching parentheses in pink
; -- e.g:
; (+ (* 3 0.80)) (* 5 0.60) 4.00 (* 2 3.00))


; Some common mistakes include:
; - too many / too early closing parentheses
; - too few / too late closing parentheses
; - mindlessly closing bubbles

; Exercise 1
; Put the missing closing parenthesis in the right place:
; (place-image (scale 2 bicycle horizontal-position 150 (empty-scene 300 300))
; (place-image (scale 2 bicycle) horizontal-position 150 (empty-scene 300 300))
; Put the fixed expression in a comment.

; Exercise 2
; Answer each problem below with one arithmetic formula. Indent each formula properly.

; - At the market, I bought an apple for $1 and a sandwich for $5. What is the total that I spent? The answer to this problem is (+ 1 5), so put this in your Definitions Window:
(define part1 (+ 1 5))

; At the market, I bought an apple for $1 and a sandwich for $5. Because a sandwich is a prepared food item, it is taxed 7%. What is the total that I spent? Define a constant named part2 with your formula.
(define part2 (+ 1 5 (* 1 0.07)))

; At the market, I bought a baked apple for $1 and a sandwich for $5. Because both are prepared food items, both are taxed 7%. What is the total that I spent? Define a constant named part3 with your formula.
(define part3 (+ (+ 1 5) (* (+ 1 5) 0.07)))

; At the restaurant, I ordered a baked apple for $1 and a sandwich for $5. Both are taxed 7%, and I also decided to pay 20% tip on the amount before tax was added. The tip is not taxed. What is the total that I spent? Define a constant named part4 with your formula.
(define part4 (+ part3 (* 0.20 part1)))

; At the restaurant, I ordered a baked apple for $1 and a sandwich for $5. Both are taxed 7%, and I also decided to pay 20% tip on the amount after tax was added. What is the total that I spent? Define a constant named part5 with your formula.
(define part5 (+ part3 (*  0.20 part3)))

; Like the last probem, but what if I rounded up the final amount to the nearest dollar (using the ceiling function)? Define a constant named part6 with your formula.
(define part6 (ceiling part5))