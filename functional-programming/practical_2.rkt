; Functional Programming
#lang sicp

#|
  TASK 1
    Write a function named circleArea, which receives one parameter. 
    The parameter is a numeric atom representing the radius of the circle.
    The function should yield (not print out) the area of a circle with the provided radius
|#

(define (circleArea radius)
  (let ((pi (/ 22 7)))
    (if (<= radius 0)
      0
      (* pi (* radius radius))
    )
  )
)

#|
  Testing the circleArea function
  Expected Answer: 32.182857142857145
|#

(display (circleArea 3.2))
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

#|
  Testing the countDivisors function
  Expected Answer: 5
|#

(display (countDivisors 20 '(1 20 30 2 5 40 10 60)))
(newline)


#|
  TASK 3
    Write a function named getEveryEvenElement, which receives one parameter.
    The parameter is a simple list (i.e. a list containing only atoms),
    from which you should extract all the values in the list at even numbered positions (assuming that the first element in the list is at position 1).
    The function should yield a list containing all the values extracted from the parameter list.
|#

(define (getEveryEvenElement listAtoms)
  (if (null? listAtoms)
    '()
    (if (null? (cdr listAtoms))
      '()
      (cons (car (cdr listAtoms)) (getEveryEvenElement (cdr (cdr listAtoms))))
    )
  )
)

#|
  Testing the getEveryEvenElement function
  Expected Answer: (b d t)
|#

(display (getEveryEvenElement '(a b c d r t)))
(newline)
