algoritmo diagonales_matriz

funcion entero mayor( a : entero, b : entero )
variables
   m : entero
inicio
   si a > b entonces
      m <- a
   sino
      m <- b
   finsi
   retornar m
fin

variables
   mat arreglo [3,3] : entero
   i, j : entero
   suma_pri, suma_sec : entero

inicio
   para i <- 1 hasta 3 hacer
      para j <- 1 hasta 3 hacer
         imprimir "Elemento [", i, ",", j, "] = "
         leer mat[i,j]
      finpara
   finpara

   suma_pri <- 0
   para i <- 1 hasta 3 hacer
      suma_pri <- suma_pri + mat[i,i]
   finpara

   suma_sec <- 0
   para i <- 1 hasta 3 hacer
      suma_sec <- suma_sec + mat[i,4 - i]
   finpara

   imprimirln "Suma diagonal principal: ", suma_pri
   imprimirln "Suma diagonal secundaria: ", suma_sec
   imprimirln "La mayor es: ", mayor(suma_pri, suma_sec)
fin
