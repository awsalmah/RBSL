;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname enum) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; 1. Data definitions

; A Boolean is one of:
; - #true
; - #false

; A TrafficLight is one of:
; - "red"
; - "yellow"
; - "green"

; 2. Signature, purpose, header

; draw-tl : TrafficLight -> Image
; draw a simple traffic light
;(define (draw-tl tl) ...)

; 3. Examples

(require 2htdp/image)
(define background (rectangle 100 300 "solid" "black"))

(check-expect (draw-tl "red")
              (place-image (circle 40 "solid" "red") 50 50 background))

(check-expect (draw-tl "yellow")
              (place-image (circle 40 "solid" "yellow") 50 150 background))

(check-expect (draw-tl "green")
              (place-image (circle 40 "solid" "green") 50 250 background))

; 4. Template

;(define (draw-tl tl)
;  (cond [(string=? tl "red") ...]
;        [(string=? tl "yellow") ...]
;        [(string=? tl "green") ...]))

; 5. Function definition

(define (draw-tl tl)
  (cond [(string=? tl "red")
         (place-image (circle 40 "solid" "red") 50 50 background)]
        [(string=? tl "yellow")
         (place-image (circle 40 "solid" "yellow") 50 150 background)]
        [(string=? tl "green")
         (place-image (circle 40 "solid" "green") 50 250 background)]))
