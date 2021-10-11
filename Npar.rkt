#lang at-exp racket
(define(addpairs n)
  (define max(* n 2))
  (define sum 0)
  (unless(= (quotient max 2) 0) (set! max (+ 1 max)))
  (display "(" )
  (for ([i(in-range 2 max 2)])
    (set! sum (+ i sum))
    (display @~a{+@i})

    )
    (display @~a{) = @sum })
  )



(begin
  (newline)
  (display "Enter the value of N: ")
  (define x (read))
  (addpairs x)
  )