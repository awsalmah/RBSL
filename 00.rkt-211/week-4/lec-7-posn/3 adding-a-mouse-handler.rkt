;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3 adding-a-mouse-handler|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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


; mouse : World(Posn) Number Number MouseEvent -> World(Posn)
; move the posn to the mouse location
; (define (mouse p x y me) ...)

(check-expect (mouse here 12 34 "move") (make-posn 12 34))
(check-expect (mouse there 56 78 "drag") (make-posn 56 78))

#;
(define (mouse p x y me)
  (... (posn-x p) (posn-y p) x y me ...)) ; but since we dont care about p or me, we can leave them out

(define (mouse p x y me)
  (make-posn x y))

; A World is a Posn
(big-bang (make-posn 12 34)
  [to-draw draw-posn] ; World(Posn) -> Image
  [on-mouse mouse]
  )