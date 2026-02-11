;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 bigger-answers|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; bigger numbers

; tax : Number -> Number
; compute the income tax of some single person with the given income
; (define (tax income) ...)

(check-expect (tax 4980) 498)
(check-expect (tax 19975) 2203)

; (define (tax income) (... income ...))

(define (tax income)
  (cond [(< income 9700) (* 0.10 income)]
        [else (+ (* 0.10 9700) (* 0.12 (- income 9700)))]))

; when the last case of a cond, it means always fall back to this case if nothing else comes out to be true