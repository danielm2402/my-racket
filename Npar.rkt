#lang at-exp racket
(define(sumarpares n)
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
  (display "Suma de los n primero numeros pares")
  (newline)
  (display "Ingrese el valor de n: ")
  (define x (read))
  (sumarpares x)
  )