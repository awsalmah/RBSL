;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 big-bang-for-interactive-animations|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lecture 6 : big-bang for interactive animations
; big-bang for interactive animations

(require 2htdp/image)
(require 2htdp/universe)

; big-bang is like animate but more powerful and more general
; in animate we have a sequence of successive numbers starting with 0 and we
; give each of those numbers to the drawing function to turn it into an image.

; big-bang works similarly, but we don't have to use numbers, we could use other
; things. Whatever we use is called a world.

; a big-bang animation needs 2 functions
; - one to tell us how to draw a world as an image
; - secondly to tell us how to turn each world into its next world

; The most important thing about using big-bang is that:
; we have to decide what a world is.

; A world is going to be a TrafficLight

; draw-tl : World -> Image
; next-tl : World -> World

; A TrafficLight is one of:
; - "red"
; - "yellow"
; - "green"

(define background (rectangle 100 300 "solid" "black"))

(define (draw-tl tl)
  (cond [(string=? tl "red")
         (place-image (circle 40 "solid" "red") 50 50 background)]
        [(string=? tl "yellow")
         (place-image (circle 40 "solid" "yellow") 50 150 background)]
        [(string=? tl "green")
         (place-image (circle 40 "solid" "green") 50 250 background)]))

(define (next-tl tl)
  (cond [(string=? tl "red") "green"]
        [(string=? tl "yellow") "red"]
        [(string=? tl "green") "yellow"]))


; the template for big-bang (currently) is :
#;(big-bang initial-world
  [to-draw draw-function]
  [on-tick tick-handler seconds-per-tick/speed]
  [on-key key-handler])

#;
(big-bang "red"
  [to-draw draw-tl]
  [on-tick next-tl 2])

; key-tl : World KeyEvent -> World
; handle any key by advancing the traffic light
; (define (key-tl tl ke) ...)

(check-expect (key-tl "red" "j") "green")
(check-expect (key-tl "yellow" "m") "red")

; (define (key-tl tl ke) (... tl ke ...))

(define (key-tl tl ke) (next-tl tl))

; A KeyEvent is an enumeration of strings!
; most of the time, they're just the string
; containing the letter that you press.

; big-bang is really powerful. It can be used not only to build animations but to build interactive applications such as :
; time passing, keyboard pressing, and mouse-clicking

; NOTE: not all inputs need to be processed!
#;
(big-bang "red"
  [to-draw draw-tl]
  [on-key key-tl]
  [on-tick next-tl 2])


; Exercise 1
; Design a function called reset-to-red that takes a TrafficLight and a KeyEvent as inputs and always returns the TrafficLight "red".

; 1 Data definitions
; A TrafficLight is one of:
; - "red"
; - "yellow"
; - "green"

; A KeyEvent is an enumeration of strings

; 2 Signature, purpose, header
; reset-to-red : TrafficLight KeyEvent -> TrafficLight
; returns the "red" TrafficLight no matter what its input is
; (define (reset-to-red tl ke) ...)

; 3 Examples
(check-expect (reset-to-red "red" "a") "red")
(check-expect (reset-to-red "yellow" "w") "red")
(check-expect (reset-to-red "green" "s") "red")

; 4 Function template
; (define (reset-to-red tl ke) (... tl ke ...))

; 5 Function body
(define (reset-to-red tl ke) "red")
; might need to have this check if tl and ke are actually a TrafficLight and KeyEvent


; Exercise 2
; Change the big-bang in the video above so that the traffic light still changes every 2 seconds but, whenever any key is pressed, the traffic light becomes red immediately.
(big-bang "red"
  [to-draw draw-tl]
  [on-key reset-to-red]
  [on-tick next-tl 2])