#lang at-exp racket

(define(multiplicationTables n1 n2 n3 n4)
  (define tbl1init n1)
  (define tbl1end n2)
  (define tbl2init n3)
  (define tbl2end n4)
  (cond [(> n1 n2)(begin (set! tbl1init n2) (set! tbl1end n1))])
  (cond [(> n3 n4)(begin (set! tbl2init n4) (set! tbl2end n3))])


  (for ([i (in-range tbl1init (+ tbl1end 1) )])
    (for ([j 11])
      (printf "~s * ~s = ~s \n " i j (* i j))
      )
    (printf "-------\n ")
    )

   (for ([i (in-range tbl1init (+ tbl1end 1) )])
    (for ([j (in-range tbl2init (+ tbl2end 1))])
      (printf "~s * ~s = ~s \n " i j (* i j))
      )
    (printf "-------\n ")
    )
  )
  

(begin
  (display "Ingrese Numero 1 ")
  (define num1(read))
  (display "Ingrese Numero 2 ")
  (define num2(read))
  (display "Ingrese Numero 3 ")
  (define num3(read))
  (display "Ingrese Numero 4 ")
  (define num4(read))
  (multiplicationTables num1 num2 num3 num4)
  
  )