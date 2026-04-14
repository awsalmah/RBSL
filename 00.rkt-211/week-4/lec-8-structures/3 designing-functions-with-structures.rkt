;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3 designing-functions-with-structures|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 2 Designing functions using structures

; 1. Data Definitions

; An address is (make-address Number String)
(define-struct address (number street))

(define luddy (make-address 700 "Woodlawn Ave"))

; 2. Signature, Purpose, Header

; format-address : Address -> String
; write the address as on a letter
; (define (format-address a) ...)

; 3. Examples
(check-expect (format-address luddy) "700 Woodlawn Ave")
(check-expect (format-address (make-address 1 "Main St")) "1 Main St")

; 4. Template
#;
(define (format-address a)
  (... (address-number a) ... (address-street a) ...))

; 5. Function Definition

; string-append : String String -> String
; number->string : Number -> String
(define (format-address a)
  (string-append (number->string (address-number a))
                 " "
                 (address-street a)))
; 6. Tests


; Exercise 6
; Finish designing the following function.

; 1. Data Definitions
; A Person is (make-person String Number)
(define-struct person [name age])
     
; A Boolean is one of:
; - true
; - false
     
; 2. Signature, Purpose, Header
; teenager? : Person -> Boolean
; is a given person 13-19 years old?
; (define (teenager? p) ...)
     
; 3. Examples
(check-expect (teenager? (make-person "Alice" 37)) false)
(check-expect (teenager? (make-person "Bob" 14)) true)

; 4. Template
#;
(define (teenager? p)
  (... (person-name p) ... (person-age p) ...))

; 5. Definition
(define (teenager? p)
  (and (>= (person-age p) 13) (<= (person-age p) 19)))

; 6. Tests