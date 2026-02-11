;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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
;(define (rate-points rr) ...)

(check-expect (rate-points 20) 4)
(check-expect (rate-points 35) 3)
(check-expect (rate-points 8) 2)
(check-expect (rate-points 3) 1)
(check-expect (rate-points 0) 0)

(define (rate-points rr)
  (cond [(<= 10 rr 29) 4]
        [(> rr 29) 3]
        [(<= 6 rr 9) 2]
        [(<= 1 rr 5) 1]
        [(= rr 0) 0]))

; tax : Number -> Number
; compute the income tax of some single person with the given income
;(define (tax income) ...)

(check-expect (tax 4980) 498)
(check-expect (tax 19975) 2203)

;(define (tax income) (... income ...))

(define (tax income)
  (cond [(< income 9700) (* 0.10 income)]
        [else (+ (* 0.10 9700) (* 0.12 (- income 9700)))]))
