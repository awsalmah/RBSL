;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1 designing using a conditional|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Desigining using a conditional

; A Boolean is one of:
; - #true
; - #false

; > : Number Number -> Boolean
; < : Number Number -> Boolean
; = : Number Number -> Boolean
; >= : Number Number -> Boolean
; <= : Number Number -> Boolean

; rate-points : Number -> Number
; convert respiratory rate into trauma points
; (define (rate-points rr) ...)

(check-expect (rate-points 20) 4)
(check-expect (rate-points 35) 3)
(check-expect (rate-points 8) 2)
(check-expect (rate-points 3) 1)
(check-expect (rate-points 0) 0)

; It's important to write examples for every case in a conditional

; (define (rate-points rr) (... rr ...))

(define (rate-points rr)
  (cond [(<= 10 rr 29) 4]
        [(> rr 29) 3]
        [(<= 6 rr 9) 2]
        [(<= 1 rr 5) 1]
        [(= rr 0) 0]))


; Exercise 2
; Design a function called bp-points to convert the patient’s systolic blood pressure into a coded value. Use the same table we used for the respiratory rate:

; bp-points : Number -> Number
; converts systolic blood pressure into trauma points
; (define (bp-points sbp) ...)

(check-expect (bp-points 100) 4)
(check-expect (bp-points 80) 3)
(check-expect (bp-points 60) 2)
(check-expect (bp-points 40) 1)
(check-expect (bp-points 0) 0)

; (define (bp-points sbp) (... sbp ...))

(define (bp-points sbp)
  (cond [(> sbp 89) 4]
        [(<= 76 sbp 89) 3]
        [(<= 50 sbp 89 ) 2]
        [(<= 1 sbp 49) 1]
        [(= sbp 0) 0]))