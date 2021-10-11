#lang at-exp racket

(define (invert_list list)
  (invert_recursive_list list '() (- (length list) 1))
  )

(define (invert_recursive_list initialList new_list index)
  (if (< index 0) new_list (invert_recursive_list initialList (append new_list (list(list-ref initialList index)) ) (- index 1)))
  )

(begin (invert_list ( list 1 2 3 4 5 6)) )

