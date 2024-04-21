#lang sicp
(define (coneVolume radius height)
  (let ((pi (/ 22 7)))
    (cond
      ((negative? radius) 0)
      ((negative? height) 0)
      (else (* pi radius radius (/ height 3)))
    )
  )
)

(display "Testing Dunction: coneVolume")
(display (coneVolume 3.2 1.8))

(define (countNegatives inList)
  (cond
    ((null? inList) 0)
    ((> (car inList) 0) (+ 0 (countNegatives (cdr inList))))
    (else (+ 1 (countNegatives (cdr inList))))
  )
)
(display " | Testing Dunction: countNegatives")
(display (countNegatives '(15 16 17 -18 19 20 -21)))

(define (gotAnySpicyElements inSecondItem)
  (cond
    ((null? inSecondItem) 0)
    ((null? (cdr inSecondItem)) 1)
    (else 2)
  )
)

(define (getEveryOddElement inList)
  (cond
    ((= 0 (gotAnySpicyElements inList)) '())
    ((= 1 (gotAnySpicyElements inList)) (cons (car inList) '()))
    ((= 2 (gotAnySpicyElements inList)) (cons (car inList) (getEveryOddElement(cdr(cdr inList)))  ))
  )
)

(display " | Testing Dunction: getEveryOddElement")
(display (getEveryOddElement '(1 2 3 4 5 6 7)))

