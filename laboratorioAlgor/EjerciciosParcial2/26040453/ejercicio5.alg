algoritmo alumnos_aprobados

funcion real promedio( c1 : real, c2 : real, c3 : real )
variables
   suma : real
inicio
   suma <- c1 + c2 + c3
   retornar suma / 3
fin

funcion logico aprobado( p : real )
variables
   r : logico
inicio
   r <- p >= 7
   retornar r
fin

variables
   nombres arreglo [4] : cadena
   cal arreglo [4,3] : real
   i, j : entero
   prom : real
   cuenta : entero

inicio
   para i <- 1 hasta 4 hacer
      imprimir "Nombre del alumno ", i, ": "
      leer nombres[i]
   finpara

   para i <- 1 hasta 4 hacer
      para j <- 1 hasta 3 hacer
         imprimir "Calificacion examen ", j, " de ", nombres[i], ": "
         leer cal[i,j]
      finpara
   finpara

   cuenta <- 0
   para i <- 1 hasta 4 hacer
      prom <- promedio(cal[i,1], cal[i,2], cal[i,3])
      imprimir nombres[i], " - Promedio: ", prom
      si aprobado(prom) entonces
         imprimirln " - APROBADO"
         cuenta <- cuenta + 1
      sino
         imprimirln " - REPROBADO"
      finsi
   finpara

   imprimirln "Alumnos aprobados: ", cuenta
fin
