#lang at-exp racket

(define(calcularConsumo km precio dinero horas minutos)
  (define consumoGasolinaEuros (/ (* 100 precio) km))
  (define consumoGasolinaLitros (/ (* 100 (/ dinero precio)) km))
  (define velocidadMediaKm (/ km horas))
  (define velocidadMediaMs (/ (* 1000 km) (* minutos 60)))

  (display "-------------------------------------------------")
  (newline)
  (display "Consumo de gasolina en euros por cada 100km:  ")
  (display consumoGasolinaEuros)
  (newline)
  (display "Consumo de gasolina en litros por cada 100km: ")
  (display consumoGasolinaLitros)
  (newline)
  (display "Velocidad media en km/h: ")
  (display velocidadMediaKm)
  (newline)
  (display "Velocidad media en m/s: ")
  (display velocidadMediaMs)
  (newline)
  
  )


(begin
  (display "Ingrese kilometros recorridos ")
  (define km(read))
  (display "precio gasolina por litro")
  (define precio(read))
  (display "Dinero de gasolina gastado en el viaje ")
  (define dinero(read))
  (display "tiempo tardado en horas ")
  (define horas(read))
  (display "tiempo tardado en minutos ")
  (define minutos(read))
  (calcularConsumo km precio dinero horas minutos)
  )