; Functional Programming
#lang sicp

(define testingLambda (lambda (x y) (> x y)))

(display (testingLambda 3 1))

(newline)

; pi*r*r

(define (circleRadius radius)
  (let ((pi (/ 22 7)))
    (if (<= radius 0)
      0
      (* pi (* radius radius))
    )
  ) 
)

(display (circleRadius 3.2))
(newline)

(define (testingEquivalence x y)
  (cond
    ((null? x) #f)
    ((null? y) #f)
    ((or (list? x) (list? y))
      (equal? x y)
    )
    (else (eqv? x y))
  )
)

(display (testingEquivalence 'a 'a))
(newline)
(display (testingEquivalence '(1 2 3) '()))
(newline)

; (defile (testing))

#|
  TASK 3
    Write a function named getEveryEvenElement, which receives one parameter.
    The parameter is a simple list (i.e. a list containing only atoms),
    from which you should extract all the values in the list at even numbered positions (assuming that the first element in the list is at position 1).
    The function should yield a list containing all the values extracted from the parameter list.
|#

(define (getEveryEvenElement list)
  (if (null? list)
    '()
    (if (null? (cdr list))
    '()
    (cons (car (cdr list)) (getEveryEvenElement (cdr (cdr list))))
    )
  )
)

(display "TAST 3")
(newline)
(display (getEveryEvenElement '(a b c d r t)))
(newline)


#|
  TASK 2
    Write a function named countDivisors, which receives two parameters.
    The first parameter is an integer valued numeric atom, for which you want to find divisors
    (i.e. you want to find values that divide perfectly into this parameter).
    The second parameter is a simple list (i.e. a list containing only atoms).
    You may assume that the list contains only integer valued numeric atoms. This list should then be searched for divisors.
    The countDivisors function should yield (not print out) a count of the number of divisors found in the list provided as the second parameter.
|#

(define (countDivisors number listAtoms)
  (cond 
    ((null? listAtoms) 0)
    ((= (remainder number (car listAtoms)) 0)
      (+ 1 (countDivisors number (cdr listAtoms)))
    )
    (else 
      (countDivisors number (cdr listAtoms))
    )
  )
)

(display "TAST 2")
(newline)
(display (countDivisors 60 '(1 20 30)))
(newline)


(define (duplicateValues number listAtoms)
  (if (null? listAtoms)
    '()
    (cons
      (car listAtoms)
      (if (eqv? number (car listAtoms))
        (duplicateValues number (cdr listAtoms))
        (cons (car listAtoms) (duplicateValues number (cdr listAtoms)))
      )
    )
  )
)

(display (duplicateValues 'A '(A B C D E A V Y)))