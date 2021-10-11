#lang at-exp racket
(define(contarPrimos num [total 0] [index 2])
  
  (if(<= index num)(if (= (verificarPrimo index) 0)(contarPrimos num (+ total 1) (+ index 1)) (contarPrimos num total (+ index 1))) total)
  )

(define (verificarPrimo numero [index 2] [divisores 0])
  (if (< index numero)(if (=(modulo numero index)0) (verificarPrimo numero (+ index 1) (+ divisores 1)) (verificarPrimo numero (+ index 1) divisores ) ) divisores)
  
  )

(begin (contarPrimos 20))