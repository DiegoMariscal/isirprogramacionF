algoritmo temperaturas_semana

variables
   t arreglo [7] : real
   suma, promedio : real
   contador, i : entero

inicio
   suma <- 0
   contador <- 0

   para i <- 1 hasta 7 hacer
      imprimir "Temperatura del dia ", i, " = "
      leer t[i]
      suma <- suma + t[i]
   finpara

   promedio <- suma / 7

   para i <- 1 hasta 7 hacer
      si t[i] > promedio entonces
         contador <- contador + 1
      finsi
   finpara

   imprimirln "Promedio = ", promedio
   imprimirln "Dias por encima del promedio: ", contador
fin
