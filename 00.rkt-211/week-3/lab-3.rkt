;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Lab 3 : Multiple cases
(require 2htdp/image)
(require 2htdp/universe)

; 1 Conditionals

; turkey : Number –> String
; returns how to cook a turkey thigh at the given Fahrenheit temperature
; (define (turkey temperature) ...)
(check-expect (turkey 71) "Preheat the oven.")
(check-expect (turkey 72) "Preheat the oven.")
(check-expect (turkey 164) "Continue cooking.")
(check-expect (turkey 165) "Stop cooking.")
(check-expect (turkey 166) "Stop cooking.")
 
(define (turkey temperature)
  (cond [(<= temperature 72) "Preheat the oven."]
        [(< temperature 165) "Continue cooking."]
        [else "Stop cooking."]))

; Exercise 1
; Finish designing the following function.

; 1. Data definitions

; 2. Signature, purpose, header
; pie-dough : Number -> String
; returns what to do with pie dough at the given Fahrenheit temperature
; (define (pie-dough temperature) ...)

; 3. Function examples
(check-expect (pie-dough 60) "wait")
(check-expect (pie-dough 70) "roll out")
(check-expect (pie-dough 80) "refrigerate")

; 4. Function template
;(define (pie-dough temperature)
;  (... temperature ...))

; 5. Function definition
(define (pie-dough temperature)
  (cond
    [(<= temperature 60) "wait"]
    [(<= temperature 70) "roll out"]
    [(<= temperature 80) "refrigerate"]))

; 6. Testing


; Exercise 2
; Design a function instructor? that checks whether a given string matches the name of one of your lab instructors.
; For example, if your lab instructors are Sita and Rama, then (instructor? "Sita") should be true
; and (instructor? "Ravana") should be false. You should find the function string=? in
; the Beginning Student Language useful:

; A Boolean is one of:
; - true
; - false
; Examples:
;   true
;   false
; Non-examples:
;   "true"
;   0
 
; string=? : String String -> Boolean
; checks whether the given strings are equal

; 1. Data definitions

; 2. Signature, purpose, header
; instructor? : String -> Boolean
; checks whether a given string matches the name of one of your lab instructors
; (define (instructor? name) ...)

; 3. Function examples
(check-expect (instructor? "Sita") true)
(check-expect (instructor? "Rama") true)
(check-expect (instructor? "Ravana") false)

; 4. Function template
;(define (instructor? name) (... name ...))

; 5. Function definition
(define (instructor? name)
  (cond
    [(string=? name "Sita") true]
    [(string=? name "Rama") true]
    [else false]))

; 6. Testing


; Exercise 3

; 1. Data definitions

; 2. Signature, purpose, header
; star-wars : Number -> Image
; make the text STAR WARS shrink then disappear
; (define (star-wars t) ...)
(define background (rectangle 956 400 "solid" "black"))

; 3. Function examples
(check-expect (star-wars 0)
              (overlay (above (text "STAR" 200 "yellow")
                              (text "WARS" 200 "yellow"))
                       background))
(check-expect (star-wars 99)
              (overlay (above (text "STAR" 2 "yellow")
                              (text "WARS" 2 "yellow"))
                       background))
(check-expect (star-wars 100) background)
(check-expect (star-wars 200) background)

; 4. Function template
; (define (star-wars t) (... t ...))

; 5. Function definition
(define (star-wars t)
  (cond
    [(< t 100) (overlay (above (text "STAR" (- 200 t t) "yellow")
                               (text "WARS" (- 200 t t) "yellow"))
                        background)]
    [else background]))

; 6. Testing
; (animate star-wars)


; 2 Data definitions
; Exercise 4
; Chris is designing a function with the following signature.

; wibble : Wobble Cloud -> Image

; In the very first step of the design recipe, which data definitions do they need to write?
; (You don’t need to write the data definitions. Just say which ones are needed, in a comment.)
; Wobble & Cloud


; 3 Enumerations
; One kind of data definition is an enumeration. An enumeration lists each of the possible values.
; For example, consider the following Department enumeration.

; A Department is one of:
; - "biology"
; - "business"
; - "computer science"
; - "English"

; Exercise 5
; Put the data definition above into the Definitions Window of DrRacket.
; What happens when you run the program? Nothing, they are comments.
; What happens if you remove the semicolons and then run the program?
; They will return an error due to the first line not being a string and due to the presence of - before each string.

; In this class, we put data definitions in comments because they are interpreted by other programmers, not by the computer.
; Some other programming languages (which you will learn in other classes) will read and enforce the data definitions,
; so they will not be in comments.

; Exercise 6
; A deck of cards has four suits: clubs, diamonds, hearts, and spades. Define an enumeration for a suit of cards.
; A suit of cards is one of:
; - clubs
; - diamonds
; - hearts
; - spades

; Exercise 7
; The colors of the rainbow are hot pink, red, orange, yellow, green, turquoise, indigo, and violet.
; Define an enumeration for the colors of the rainbow.
; A color of the rainbow is one of:
; hot pink
; red
; orange
; yellow
; green
; turquoise
; indigo
; violet


; 4 Examples of enumerations
; With the data definition of a Department in hand, we can define the following three examples of Departments:

(define alices-department "computer science")
(define bobs-department "business")
(define charlies-department "English")

; Exercise 8
; Define two examples of a suit of cards.
(define suit-1 "clubs")
(define suit-2 "diamonds")

; Exercise 9
; Define two examples of a color of the rainbow.
(define color-1 "hot pink")
(define color-2 "red")

; Exercise 10
; Below is an incorrect example of a Department. What happens when you run it? Nothing

(define dans-department "geology") ; Not an example of a Department

; If you try to define an example which is not one of the possible values of the enumeration,
; you will not get an error message because the Beginning Student language does not enforce the data definition.
; But it will still be incorrect.

; Exercise 11
; Define a non-example of a color of the rainbow.
(define color-nil "black")


; 5 Templates from enumerations
; Exercise 12
; Is the following a function header or a function template? Justify your answer.

; draw-department : Department -> Image
; displays the department as image text
(define (draw-department d) ...)
; It is a header because the body only contains ... .

; Exercise 13
; Examine the data definition of Department above.
; How many cases does it have? 4
; Then examine the template for processing a Department below.
; How many cases does it have? 4
; What do these numbers have in common? they have the same number of cases
; Why should they? to match all possible cases

; process-department : Department -> ...
; ...
(define (process-department d)
  (cond [(string=? d "biology")          ...]
        [(string=? d "business")         ...]
        [(string=? d "computer science") ...]
        [(string=? d "English")          ...]))

; The Beginning Student language can check the syntax of a template,
; but since a template is incomplete, the Beginning Student language cannot run it.

; Exercise 14
; Write a template for processing a suit of cards.
(define (process-cards s)
  (cond [(string=? s "clubs") ...]
        [(string=? s "diamonds") ...]
        [(string=? s "hearts") ...]
        [(string=? s "spades") ...]))

; Exercise 15
; Write a template for processing a color of the rainbow.
(define (process-rainbow c)
  (cond [(string=? c "hot pink") ...]
        [(string=? c "red") ...]
        [(string=? c "orange") ...]
        [(string=? c "yellow") ...]
        [(string=? c "green") ...]
        [(string=? c "turquoise") ...]
        [(string=? c "indigo") ...]
        [(string=? c "violet") ...]))


; 6 Functions on enumerations
; salary : Department -> Number
; returns the salary for each department.
 
(check-expect (salary "biology")          100000)
(check-expect (salary "business")         110000)
(check-expect (salary "computer science") 120000)
(check-expect (salary "English")          130000)
 
(define (salary d)
  (cond [(string=? d "biology")          100000]
        [(string=? d "business")         110000]
        [(string=? d "computer science") 120000]
        [(string=? d "English")          130000]))

; Exercise 16
; Examine the function designed above.
; How many examples (expressed as tests) does it have? 4
; How many template cases does it fill in? 4
; What do these numbers have in common? they are the same
; Why should they? to test all of the cases

; Exercise 17
; Clubs are worth one point, diamonds are worth two points, hearts are worth three points, and spades are worth four points.
; Design a function suit-points which, given a suit of cards, will calculate how many points it is worth.


; 1. Data definitions
; A suit-of-cards is one of:
; - clubs
; - diamonds
; - hearts
; - spades

; 2. Signature, purpose, header
; suit-points : suit-of-cards -> Number
; (define (suit-points s) ...)

; 3. Function examples
(check-expect (suit-points "clubs") 1)
(check-expect (suit-points "diamonds") 2)
(check-expect (suit-points "hearts") 3)
(check-expect (suit-points "spades") 4)

; 4. Function template
; (define (suit-points s)
;   (cond
;     [(string=? s "clubs") ...]
;     [(string=? s "diamonds") ...]
;     [(string=? s "hearts") ...]
;     [(string=? s "spades") ...]))

; 5. Function definition
(define (suit-points s)
  (cond
    [(string=? s "clubs") 1]
    [(string=? s "diamonds") 2]
    [(string=? s "hearts") 3]
    [(string=? s "spades") 4]))

; 6. Testing


; Exercise 18
; Design a function next-color which, given a color of the rainbow, will return the next color.
; For example, red will return orange, and yellow will return green.
; Since violet is the last color, there is no color after it.
; So as a special case, violet should return hot pink, which is the first color.

; 1. Data definitions
; A color is one of:
; hot pink
; red
; orange
; yellow
; green
; turquoise
; indigo
; violet

; 2. Signature, purpose, header
; next-color : Color -> Color
; returns the next color of the rainbow
; (define (next-color c) ...)

; 3. Function examples
(check-expect (next-color "hot pink") "red")
(check-expect (next-color "red") "orange")
(check-expect (next-color "orange") "yellow")
(check-expect (next-color "yellow") "green")
(check-expect (next-color "green") "turquoise")
(check-expect (next-color "turquoise") "indigo")
(check-expect (next-color "indigo") "violet")
(check-expect (next-color "violet") "hot pink")

              

; 4. Function template
; (define (next-color c)
;   (cond
;     [(string=? c "hot pink") ...]
;     [(string=? c "red") ...]
;     [(string=? c "orange") ...]
;     [(string=? c "yellow") ...]
;     [(string=? c "green") ...]
;     [(string=? c "turquoise") ...]
;     [(string=? c "indigo") ...]
;     [(string=? c "violet") ...]))

; 5. Function body
(define (next-color c)
  (cond
    [(string=? c "hot pink") "red"]
    [(string=? c "red") "orange"]
    [(string=? c "orange") "yellow"]
    [(string=? c "yellow") "green"]
    [(string=? c "green") "turquoise"]
    [(string=? c "turquoise") "indigo"]
    [(string=? c "indigo") "violet"]
    [(string=? c "violet") "hot pink"]))

; 6. Testing


; 7 Challenge: intervals are cuts
(define epigraph1 "A long time ago in a galaxy far,")
(define epigraph2 "far away....")
(define story-text
  (above (text "It is a period of civil war." 40 "yellow")
         (text "Rebel spaceships, striking"   40 "yellow")
         (text "lorem ipsum dolor sit"        40 "yellow")))

; Exercise 19
; Define a constant image epigraph-text. It should be the blue text epigraph1 above epigraph2. A good size of the text might be 40.
(define epigraph-text
  (above (text epigraph1 40 "blue")
         (text epigraph2 40 "blue")))

(define shot1
  (overlay epigraph-text
           background))

; Exercise 20

; 1. Data definitions

; 2. Signature, purpose, header
; shot3 : Number -> Image
; produces an image with the text star wars in the center
; (define (shot3 n) ...)

; 3. Function examples

; 4. Function template
; (define (shot3 n) (... n ...))

; 5. Function body
(define (shot3 n) (overlay
                   (above
                    (text "STAR" n "YELLOW")
                    (text "WARS" n "YELLOW"))
                   background))

; 6. Testing

; Exercise 21
; Finish designing the following function:

; A Time is one of:
; - a number less than 150
; - a number at least 150 and less than 200
; - a number at least 200 and less than 300
; - a number at least 300
     
; star-wars-opening : Time -> Image
; returns the image at the given frame number
; in our Star Wars opening crawl
; (define (star-wars-opening t) ...)
(check-expect (star-wars-opening   0) shot1)
(check-expect (star-wars-opening 100) shot1)
(check-expect (star-wars-opening 149) shot1)
(check-expect (star-wars-opening 150) background)
(check-expect (star-wars-opening 199) background)
(check-expect (star-wars-opening 200) (shot3 200))
(check-expect (star-wars-opening 299) (shot3 2))
(check-expect (star-wars-opening 300)
              (place-image story-text (/ 956 2) 470 background))
(check-expect (star-wars-opening 350)
              (place-image story-text (/ 956 2) 420 background))
(check-expect (star-wars-opening 400)
              (place-image story-text (/ 956 2) 370 background))

; Use the following template. Note how it corresponds to the data definition for Time.
; (define (star-wars-opening t)
;   (cond [(< t 150) (... t ...)]
;         [(< t 200) (... t ...)]
;         [(< t 300) (... t ...)]
;         [else      (... t ...)]))

(define (star-wars-opening t)
  (cond [(< t 150) shot1]
        [(< t 200) background]
        [(< t 300) (shot3 (- 200 (* 2 (- t 200))))]
        [else      (place-image story-text (/ 956 2) (- 770 t) background)]))

; Exercise 22
; Enjoy (animate star-wars-opening). Can you improve the movie?
; (animate star-wars-opening)