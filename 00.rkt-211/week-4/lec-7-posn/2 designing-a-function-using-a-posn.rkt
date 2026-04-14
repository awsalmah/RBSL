;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2 designing-a-function-using-a-posn|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; A Posn is (make-posn Number Number)
; make-posn : Number Number -> Posn
; posn-x : Posn -> Number
; posn-y : Posn -> Number
(define here (make-posn 30 50))
(define there (make-posn 70 45))

; draw-posn : Posn -> Image

; 1. Data Definition
; A Posn is (make-posn Number Number)

; 2. Signature, Purpose, Header
; draw-posn : Posn -> Image
; draw a dot at the location of the given Posn
; (define (draw-posn p) ...)

; 3. Examples
(define background (empty-scene 300 300))
(define dot (circle 30 "solid" "purple"))
(place-image dot 30 50 background)

(check-expect (draw-posn here)
              (place-image dot 30 50 background))

(check-expect (draw-posn there)
              (place-image dot 70 45 background))

; 4. Template
#;
(define (draw-posn p)
  (... (posn-x p) (posn-y p) ...) )

; 5. Function definition
(define (draw-posn p)
  (place-image dot (posn-x p) (posn-y p) background))


; A World is a Posn
#;
(big-bang (make-posn 12 34)
  [to-draw draw-posn] ; World(Posn) -> Image
  )

; Exercise 4
; Design a function called size that takes a Posn as input and computes the sum of the absolute values of its x and y.
; For example, the size of (make-posn 2 -3) is 5.

; Remember to follow the design recipe whenever you design or write a function.
; In particular, every type mentioned in a signature must be introduced by a data definition,
; except for these well-known types: Number, Image, String, Color, Boolean, Posn.

; 1. Data Definition
; A Posn is (make-posn Number Number)

; 2. Signature, Purpose, Header
; size : Posn -> Number
; computes the sum of the absolute values of a posn
; (define (size p) ...)

; 3. Examples
(check-expect (size (make-posn 2 -3)) 5)

; 4. Template
; (define (size p) (... (posn-x p) (posn-y p) ...))

; 5. Function definition
(define (size p) (+ (abs (posn-x p)) (abs (posn-y p))))

; Exercise 5
; Design a function called normalize that takes a Posn as input and produces a new Posn:
; The produced x should be the given x divided by the size of the given Posn.
; The produced y should be the given y divided by the size of the given Posn.
; For example, because the size of (make-posn 2 -3) is 5, the result of
; (normalize (make-posn 2 -3))
; should be (make-posn 0.4 -0.6).
; Here 0.4 is 2 divided by 5, and -0.6 is -3 divided by 5.

; 1. Data Definition
; A Posn is (make-posn Number Number)

; 2. Signature, Purpose, Header
; normalize : Posn -> Posn
; produces a new position by normalizing the old one
; (define (normalize p) ...)

; 3. Examples
(check-expect (normalize (make-posn 2 -3)) (make-posn 0.4 -0.6))

; 4. Template
; (define (normalize p) (... (posn-x p) (posn-y p) ...))

; 5. Function definition
(define (normalize p)
  (make-posn (/ (posn-x p) (size p))  (/ (posn-y p) (size p))))