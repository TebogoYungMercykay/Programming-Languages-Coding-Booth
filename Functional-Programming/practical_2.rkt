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

; Task 2

(define (countDivisors number lst)
  (define (is-divisor? n divisor)
    (= (remainder n divisor) 0))
 
  (define (count-divisors-helper lst count)
    (cond
      ((null? lst) count)
      ((is-divisor? number (car lst))
        (count-divisors-helper (cdr lst) (+ count 1)))
      (else
        (count-divisors-helper (cdr lst) count))))
 
  (count-divisors-helper lst 0))

; Example usage:
(display (countDivisors 10 '(1 20 30 2 5 40 10 60)))
(newline)

; Answer from terminal : 4
