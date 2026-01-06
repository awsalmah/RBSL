;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 design recipe tips|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Design recipe tips

; Tip 1: Implement automatic testing (i.e. use check-expect)
; -- instead of writing function examples as comments, you
;    could just write the tests, but you can only run them
;    after step 6

; Tip 2: It's important to follow the steps of the design recipe in order

; Tip 3: Different steps of the design recipe products products that look
;        very different


; The design recipe is a 6 step process that can be used to design
; any program.

; 1. Data definitions

; A Temperature is a Number

; 2. Signature, purpose, header

; ftoc : Temperature -> Temperature
; convert Farenheit to Celsius
; (define (ftoc f) ...)

; 3. Function examples
(check-expect (ftoc 32) 0)
(check-expect (ftoc 212) 100)
(check-expect (ftoc 99.5) 37.5)

; 4. Function template
; (define (ftoc f) (... f ...))

; 5. Function definition
(define (ftoc f) (/ (- f 32) 1.8))

; 6. Testing


; Exercise 3
     
; 1. Data definitions
; A Temperature is a Number

; 2. Signature, purpose, header
; ctok : Temperature -> Temperature
; convert Celsius to Kelvin
; (define (ctok c) ...)

; 3. Function examples
(check-expect (ctok 0) 273.15)
(check-expect (ctok 100) 373.15)
(check-expect (ctok 37.5) 310.65)

; 4. Function template
; (define (ctok c) (... k ...))

; 5. Function definition
(define (ctok c) (+ c 273.15))

; 6. Testing

; Exercise 4
; Turn all your function examples from comments into automatic tests. ^^