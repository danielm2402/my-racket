#lang at-exp racket
(define(sumaFactoriales num [index 1] [sum 0])
  (if(<= index num )(sumaFactoriales num (+ index 1) (+ (factorial index) sum)) sum )
  )

(define (factorial n [acum 1])
  (if (= n 1)
      acum
      (factorial (- n 1) (* n acum))))

(begin (sumaFactoriales 5))