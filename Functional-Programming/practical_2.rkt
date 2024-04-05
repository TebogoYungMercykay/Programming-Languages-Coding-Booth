#lang sicp

; Task 1

(define (circleArea radius)
  (let ((pi (/ 22 7)))
    (if (<= radius 0)
      0
        (* pi (* radius radius)))))

; Example
(display (circleArea 3.2))
(newline)

; Answer from terminal :  32.182857142857145
