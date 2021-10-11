#lang at-exp racket

(define (sum n1 n2)
  (+ n1 n2)
  )
(define (res n1 n2)
  (- n1 n2)
  )
(define (mul n1 n2)
  (* n1 n2)
  )

(define (div n1 n2)
  (/ n1 n2)
  )

(define (mod n1 n2)
  (modulo n1 n2)
  )

(define (getArithmeticOperations num1 num2)
  (display "La suma es: ")
  (display (sum num1 num2))
  (newline)
  (display "La multiplicacion es: ")
  (display (mul num1 num2))
  (newline)
  (display "La division es: ")
  (display (div num1 num2))
  (newline)
  (display "La resta es: ")
  (display (res num1 num2))
  (newline)
  (display "El modulo es: ")
  (display (mod num1 num2))
  (newline)
  (displayMenu num1 num2)
  )

(define (displayMenu num1 num2 )
  (newline)
  (display "Ingrese una opcion para mostrar operaciones no conmutativas")
  (newline)
  (display "1. Resta ")
  (newline)
  (display "2. Division ")
  (newline)
  (display "3. Modulo ")
  (newline)
  (define opc (read))
  (newline)
  (display "El resultado es: ")
  (case opc
    [(1) (res num2 num1)]
    [(2) (div num2 num1)]
    [(3) (mod num2 num1)]
    )
   
  )


(begin
  (display "Suma, Resta, Multiplicación, División, Modulo")
  (newline)
  (display "Ingrese el número 1: ")
  (define num1 (read))
  (newline)
  (display "Ingrese el número 2: ")
  (define num2 (read))
  (getArithmeticOperations num1 num2)
  )