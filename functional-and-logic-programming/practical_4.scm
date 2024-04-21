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
