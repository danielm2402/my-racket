#lang at-exp racket
(define(sumaDigitosPrimos num [sum 0])
  (define digitoActual (modulo num 10))
  (if(> digitoActual 1 )(if (= (verificarPrimo digitoActual) 0)(sumaDigitosPrimos (quotient num 10) (+ sum digitoActual)) (sumaDigitosPrimos (quotient num 10) sum)) sum)
  )

(define (verificarPrimo numero [index 2] [divisores 0])
  (if (< index numero)(if (=(modulo numero index)0) (verificarPrimo numero (+ index 1) (+ divisores 1)) (verificarPrimo numero (+ index 1) divisores ) ) divisores)
  
  )

(begin (sumaDigitosPrimos 23576))