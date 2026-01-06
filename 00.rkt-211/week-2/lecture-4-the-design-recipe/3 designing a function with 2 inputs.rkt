;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3 designing a function with 2 inputs|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Designing a function with 2 inputs

; 1. Data definitions
; A Height is a Number

; 2. Signature, purpose, header

; fitocm : Height Height -> Height
; convert feet and inches to centimeters
; (define (fitocm f i) ...)

; 3. Function examples
(check-expect (fitocm 0 0) 0)
(check-expect (fitocm 0 1) 2.5)
(check-expect (fitocm 1 0) 30)
(check-expect (fitocm 6 0) 180)
(check-expect (fitocm 5 10) 175)

; 4. Function template
; (define (fitocm f i) (... f i ...))

; 5. Function definition
(define (fitocm f i) (+ (* 30 f) (* 2.5 i)))

; 6. Testing

; Exercise 5
; Design a function named coins that takes as inputs how many nickels and how many dimes I have and
; calculates how many dollars I have in those coins.
; Hint: If you need to review how to write a template, you can watch this additional video.

; 1. Data definitions
; A Coin is a Number
; A Dollar is a Number

; 2. Signature, purpose, header

; coins : Coin Coin -> Dollar
; calculates dollars we have in coins
; (define (coins n d) ...)

; 3.  Function examples
(check-expect (coins 0 0) 0)
(check-expect (coins 0 10) 1)
(check-expect (coins 20 0) 1)
(check-expect (coins 10 5) 1)
(check-expect (coins 15 10) 1.75)

; 4. Function template
; (define (coins n d) (... n d ...))

; 5. Function header
(define (coins n d) (+ (* n 0.05) (* d 0.10)))

; 6. Testing