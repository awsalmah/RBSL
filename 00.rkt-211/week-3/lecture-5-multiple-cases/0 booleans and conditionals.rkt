;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |0 booleans and conditionals|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lecture 5 : Multiple cases
; 1 Booleans and conditions

; A Boolean is one of:
; - #true
; - #false

; > : Number Number -> Boolean
; < : Number Number -> Boolean
; = : Number Number -> Boolean
; >= : Number Number -> Boolean
; <= : Number Number -> Boolean
; To compute numbers in BSL

(> 35 29)
(> 20 29)
true
false
(<= 10 29)
(<= 10 20 29)

#;
(cond [QUESTION ANSWER]
      [QUESTION ANSWER]
      [QUESTION ANSWER]
      [QUESTION ANSWER])

; (define rr 20)
(define rr 35)
(cond [(<= 10 rr 29) 4]
      [(> rr 29) 3]
      [(<= 6 rr 9) 2]
      [(<= 1 rr 5) 1]
      [(= rr 0) 0])

; Exercise 1
; Copy the three conditionals below into your Definitions Window. What are their results?

; Exercise 1
     
(cond [(< 100 32) "solid"]
      [(<= 32 100 212) "liquid"]
      [(> 100 212) "gas"])
; = ???
; = ...
#;#; = (cond [(< 100 32) "solid"]
             [(<= 32 100 212) "liquid"]
             [(> 100 212) "gas"])
#;#; = (cond [#false "solid"]
             [(<= 32 100 212) "liquid"]
             [(> 100 212) "gas"])
#;#; = (cond [(<= 32 100 212) "liquid"]
             [(> 100 212) "gas"])
#;#; = (cond [#true "liquid"]
             [(> 100 212) "gas"])
; = "liquid"
     
(cond [(< -40 32) "solid"]
      [(<= 32 -40 212) "liquid"]
      [(> -40 212) "gas"])
; = ???
; = ...
#; #; = (cond [(< -40 32) "solid"]
      [(<= 32 -40 212) "liquid"]
      [(> -40 212) "gas"])
#; #; = (cond [#true "solid"]
      [(<= 32 -40 212) "liquid"]
      [(> -40 212) "gas"])
; = "solid"

     
(cond [(< 450 32) "solid"]
      [(<= 32 450 212) "liquid"]
      [(> 450 212) "gas"])
; = ???
; = ...
#;#; = (cond [(< 450 32) "solid"]
      [(<= 32 450 212) "liquid"]
      [(> 450 212) "gas"])
#;#; = (cond [#false "solid"]
      [(<= 32 450 212) "liquid"]
      [(> 450 212) "gas"])
#;#; = (cond [(<= 32 450 212) "liquid"]
      [(> 450 212) "gas"])
#;#; = (cond [#false "liquid"]
      [(> 450 212) "gas"])
#;#; = (cond [(> 450 212) "gas"])
#;#; = (cond [#true "gas"])
; = "gas"