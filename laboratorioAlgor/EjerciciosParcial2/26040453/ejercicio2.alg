algoritmo primos_en_arreglo

funcion logico esPrimo( n : entero )
variables
   divisores, j : entero
inicio
   divisores <- 0
   para j <- 1 hasta n hacer
      si n MOD j = 0 entonces
         divisores <- divisores + 1
      finsi
   finpara
   retornar divisores = 2
fin

variables
   a arreglo [8] : entero
   i, total : entero

inicio
   total <- 0

   para i <- 1 hasta 8 hacer
      imprimir "Ingrese el entero ", i, " = "
      leer a[i]
   finpara

   imprimir "Primos: "
   para i <- 1 hasta 8 hacer
      si esPrimo(a[i]) entonces
         imprimir a[i], " "
         total <- total + 1
      finsi
   finpara
   imprimirln

   imprimirln "Total de primos: ", total
fin
