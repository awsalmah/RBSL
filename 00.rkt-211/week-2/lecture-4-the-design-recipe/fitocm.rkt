;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname fitocm) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 1. Data definitions

; A Height is a Number

; 2. Signature, purpose, header

; fitocm : Height Height -> Height
; convert feet and inches to centimeters
;(define (fitocm f i) ...)

; 3. Function examples
(check-expect (fitocm 0 0) 0)
(check-expect (fitocm 0 1) 2.5)
(check-expect (fitocm 1 0) 30)
(check-expect (fitocm 6 0) 180)
(check-expect (fitocm 5 10) 175)

; 4. Function template
;(define (fitocm f i) (... f i ...))

; 5. Function definition
(define (fitocm f i) (+ (* 30 f) (* 2.5 i)))

; 6. Testing
