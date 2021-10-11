#lang at-exp racket

(define(sumarMultiplosDe3 num [index 1] [sum 0])
  (if (<= index num) (sumarMultiplosDe3 num (+ index 1) (if(= ( modulo index 3) 0)(+ sum index)sum)) sum)
  )

(begin (sumarMultiplosDe3 10))