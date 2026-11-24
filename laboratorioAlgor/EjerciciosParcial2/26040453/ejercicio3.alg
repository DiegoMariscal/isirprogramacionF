algoritmo ventas_por_sucursal

variables
   v arreglo [3,4] : real
   ts arreglo [3] : real
   i, j : entero
   total_trim, mayor : real
   suc_max : entero

inicio
   para i <- 1 hasta 3 hacer
      para j <- 1 hasta 4 hacer
         imprimir "Ventas sucursal ", i, " trimestre ", j, " = "
         leer v[i,j]
      finpara
   finpara

   para i <- 1 hasta 3 hacer
      ts[i] <- 0
      para j <- 1 hasta 4 hacer
         ts[i] <- ts[i] + v[i,j]
      finpara
      imprimirln "Total sucursal ", i, ": ", ts[i]
   finpara

   para j <- 1 hasta 4 hacer
      total_trim <- 0
      para i <- 1 hasta 3 hacer
         total_trim <- total_trim + v[i,j]
      finpara
      imprimirln "Total trimestre ", j, ": ", total_trim
   finpara

   mayor <- ts[1]
   suc_max <- 1
   para i <- 2 hasta 3 hacer
      si ts[i] > mayor entonces
         mayor <- ts[i]
         suc_max <- i
      finsi
   finpara

   imprimirln "Sucursal con mas ventas: ", suc_max
fin
