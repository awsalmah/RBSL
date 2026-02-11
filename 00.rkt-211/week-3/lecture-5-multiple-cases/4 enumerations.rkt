;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4 enumerations|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Enumerations
(require 2htdp/image)
(require 2htdp/universe)

; data definitions built up of lists of specific data examples are called enumerations e.g. boolean

; A Temperature is a Number

; A Color is a String


; A Boolean is one of:
; - #true
; - #false

; A Time is one of:
; - a number less than 100
; - a number at least 100

; A TrafficLight is one of:
; - "red"
; - "yellow"
; - "green"

; 2. Signature, purpose, header

; draw-tl : TrafficLight -> Image
; draws a simple traffic light
; (define (draw-tl tl) ...)

; 3. Examples
(define background (rectangle 100 300 "solid" "black"))
(check-expect (draw-tl "red")
              (place-image (circle 40 "solid" "red") 50 50 background))
(check-expect (draw-tl "yellow")
              (place-image (circle 40 "solid" "yellow") 50 150 background))
(check-expect (draw-tl "green")
              (place-image (circle 40 "solid" "green") 50 250 background))

; 4. Function header
#;(define (draw-tl tl)
    (cond [(string=? tl "red") ...]
          [(string=? tl "yellow") ...]
          [(string=? tl "green") ...]))

; 5. Function body
(define (draw-tl tl)
  (cond [(string=? tl "red")
         (place-image (circle 40 "solid" "red") 50 50 background)]
        [(string=? tl "yellow")
         (place-image (circle 40 "solid" "yellow") 50 150 background)]
        [(string=? tl "green")
         (place-image (circle 40 "solid" "green") 50 250 background)]))


; Exercise 4
; Design a function called next-tl that takes a traffic light as input and returns the next traffic light. Hint: you can reuse the data definition and template written in the video above.

; 1. Data definitions

; A TrafficLight is one of:
; - "red"
; - "yellow"
; - "green"

; 2. Signature, purpose, header

; next-tl : TrafficLight -> TrafficLight
; returns the next TrafficLight
; (define (next-tl tl) ...)

; 3. Examples
(check-expect (next-tl "red") "green")
(check-expect (next-tl "yellow") "red")
(check-expect (next-tl "green") "yellow")

; 4. Function Header
#;(define (next-tl tl)
    (cond [(string=? tl "red") ...]
          [(string=? tl "yellow") ...]
          [(string=? tl "green") ...]))

; 5. Function body
(define (next-tl tl)
  (cond [(string=? tl "red") "green"]
        [(string=? tl "yellow") "red"]
        [(string=? tl "green") "yellow"]))


; Exercise 5. In order to handle clicking and dragging and moving of the mouse, we will need to design functions that take a MouseEvent as input. Here is the data definition for a MouseEvent:

; A MouseEvent is one of:
; - "button-down"
; - "button-up"
; - "move"
; - "drag"
; - "enter"
; - "leave"

; Write the template for a function that processes a MouseEvent. Make your template look like a function called process-mouseevent, and do not put it in a comment.

; 1. Data definitions

; A MouseEvent is one of:
; - "button-down"
; - "button-up"
; - "move"
; - "drag"
; - "enter"
; - "leave"

; 2. Signature, purpose, header
; process-mouseevent : MouseEvent -> ME
; returns a short string that corresponds to the mouseevent
; (define (process-mouseevent me) ...)

; 3. Examples
(check-expect (process-mouseevent "button-up") "u")
(check-expect (process-mouseevent "button-down") "d")
(check-expect (process-mouseevent "move") "m")
(check-expect (process-mouseevent "drag") "drg")
(check-expect (process-mouseevent "enter") "e")
(check-expect (process-mouseevent "leave") "l")

; 4. Function template
#;(define (process-mouseevent me)
    (cond
      [(string=? me "button-up") ...]
      [(string=? me "button-down") ...]
      [(string=? me "move") ...]
      [(string=? me "drag") ...]
      [(string=? me "enter") ...]
      [(string=? me "leave") ...]))

; 5. Function definition
(define (process-mouseevent me)
  (cond
    [(string=? me "button-up") "u"]
    [(string=? me "button-down") "d"]
    [(string=? me "move") "m"]
    [(string=? me "drag") "drg"]
    [(string=? me "enter") "e"]
    [(string=? me "leave") "l"]))