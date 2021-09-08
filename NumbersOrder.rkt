#lang racket

(define(ascendingOrder min mid max)
  (define nmax max)
  (define nmid mid)
  (define nmin min)
  (define temp 0)
  
  ( if (< nmin nmid) (set! nmin nmin) (begin (set! nmin nmid) (set! nmid min)))
  ( if (< nmin nmax) (set! nmin nmin) (begin (set! temp nmin) (set! nmin nmax)(set! nmax temp)))
  ( if (> nmax nmid)(set! nmax nmax)(begin(set! temp nmax)(set! nmax nmid )(set! nmid temp)))
  
  
 
  (begin(print nmin)
        (print nmid)
        (print nmax)
  )
)


(define(descendingOrder min mid max)
  (define nmax max)
  (define nmid mid)
  (define nmin min)
  (define temp 0)
  
  ( if (> nmax nmid) (set! nmax nmax) (begin (set! nmax nmid) (set! nmid max)))
  ( if (> nmax nmin) (set! nmax nmax) (begin (set! temp nmax) (set! nmax nmin)(set! nmin temp)))
  
  ( if (> nmid nmin)(set! nmid nmid)(begin(set! temp nmid)(set! nmid nmin )(set! nmin temp)))
  
  
 
  (begin
    (display "\n")
    (print nmax)
    (print nmid)
    (print nmin)
  )
)


(begin
(define number1 (read))
(define number2 (read))
(define number3 (read))
(ascendingOrder number1 number2 number3)
(descendingOrder number1 number2 number3)
)

