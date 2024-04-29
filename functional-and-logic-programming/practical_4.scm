; Functional Programming
#lang sicp

(define (isNegative x)
  (negative? x)
)

(define (isEven x)
  (even? x)
)

(define (stripNegativesDuplicateEvens listValues)
  (cond
    ((null? listValues)
      '()
    )
    ((isNegative (car listValues))
      (stripNegativesDuplicateEvens (cdr listValues))
    )
    ((isEven (car listValues))
      (cons (car listValues)
        (cons (car listValues)
          (stripNegativesDuplicateEvens (cdr listValues))
        )
      )
    )
    (else
      (cons (car listValues)
        (stripNegativesDuplicateEvens (cdr listValues))
      )
    )
  )
)

(display "Test 1: Input: '()\nExpected Output: ()")
(newline)
(display "Actual Output: ")
(display (stripNegativesDuplicateEvens '()))
(newline)
(newline)

(display "Test 2: Input: '(-1 -2 -3)\nExpected Output: ()")
(newline)
(display "Actual Output: ")
(display (stripNegativesDuplicateEvens '(-1 -2 -3)))
(newline)
(newline)

(display "Test 3: Input: '(1 2 -2 3 -3 4 5 -6)\nExpected Output: (1 2 2 4 4 5)")
(newline)
(display "Actual Output: ")
(display (stripNegativesDuplicateEvens '(1 2 -2 3 -3 4 5 -6)))
(newline)
(newline)

(display "Test 4: Input: '(-2 -5 4 -5 1 2 -2 3 -3 4 5 -6)\nExpected Output: (4 4 1 2 2 4 4 5)")
(newline)
(display "Actual Output: ")
(display (stripNegativesDuplicateEvens '(-2 -5 4 -5 1 2 -2 3 -3 4 5 -6)))
(newline)

(display (stripNegativesDuplicateEvens '()))
(newline)

(display (stripNegativesDuplicateEvens '(-6 -1)))
(newline)

(display (stripNegativesDuplicateEvens '(6 8)))
(newline)

(display (stripNegativesDuplicateEvens '(4 -1 9)))
(newline)