#lang racket

(define(discount salary position gender)
  (define descuento 0)
  (define total 0)
 (if(equal? position 'obrero)(if(equal? gender 'f) (set! descuento 0.1) (set! descuento 0.15) ) (if(equal? position 'oficinista) (if(equal? gender 'f)(set! descuento 0.15)(set! descuento 0.2)) ('Invalido) ))
  (set! total (- salary (* salary descuento)))

  (print total)
)


(begin
(define salary (read))
(define position (read))
(define gender (read))
(discount salary position gender)

)
