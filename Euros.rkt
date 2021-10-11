#lang at-exp racket

(define-struct coin (name amount))

(define coins (list (make-coin 500 0 ) (make-coin 200 0) (make-coin 100 0) (make-coin 50 0) (make-coin 20 0) (make-coin 10 0) (make-coin 5 0) ))

(define (getAmount coin)
  (coin-amount coin)
  )

(define (getName coin)
  (coin-name coin)
  )

(define (getCoin index)
  (list-ref coins index)
  )

(define (setCoin index coin)
  (set! coins (list-set coins index coin))
  )

(define (Recursive money index)
  (setCoin index (make-coin (getName (getCoin index) ) (+ (getAmount (getCoin index)) 1 )))
  (calculateMoney (- money (getName(getCoin index))) index  )
  )

(define (calculateMoney money index)
  (cond [(> money 0)
      (if(> (getName(getCoin index)) money)( calculateMoney money (+ index 1))(Recursive money index))
      ])
)

(define(printList)
  (for ([x coins])
    (printf "~s -> ~s\n " (coin-name x) (coin-amount x)))
  )
  

(begin
  (display "Ingrese cantidad en euros: ")
  (define money(read))
  (calculateMoney money 0 )
  (printList)
  )