; Functional Programming
#lang sicp

(define testingLambda (lambda (x y) (> x y)))

(display (testingLambda 3 1))
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