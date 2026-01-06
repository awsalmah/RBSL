;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1 designing a function with 1 input|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Designing a function with 1 input

; The design recipe is a 6 step process that can be used to design
; any program.

; 1. Data definitions

; A Temperature is a Number

; 2. Signature, purpose, header

; ftoc : Temperature -> Temperature
; convert Farenheit to Celsius
; (define (ftoc f) ...)

; 3. Function examples
; given: 32     expect: 0
; given: 212    expect: 100

; 4. Function template
; (define (ftoc f) (... f ...))

; 5. Function definition
(define (ftoc f) (/ (- f 32) 1.8))

; 6. Testing
(check-expect (ftoc 32) 0)
(check-expect (ftoc 212) 100)

; NOTE: purpose statements shouldn't reiterate the same information as the signature.

; Exercise 3
; Design a function named ctok that converts a temperature in Celsius to a temperature in Kelvin. Start by copying the following list of steps into your Definitions Window:

; Exercise 3
     
; 1. Data definitions
; A Temperature is a Number

; 2. Signature, purpose, header
; ctok : Temperature -> Temperature
; convert Celsius to Kelvin
; (define (ctok c) ...)

; 3. Function examples
; given: 0      expect: 273.15
; given: 100    expect: 373.15

; 4. Function template
; (define (ctok c) (... k ...))

; 5. Function definition
(define (ctok c) (+ c 273.15))

; 6. Testing
(check-expect (ctok 0) 273.15)
(check-expect (ctok 100) 373.15)