# Resolver sistemas de ecuaciones

A <- rbind(c(1,1,2),c(2,4,-3),c(3,6,-5)) 
X <- rbind(c(3,4,5),c(3,2,5),c(3,6,-5)) 

A+X
A-X
A %*% X

# Matriz de coeficientes
b <- c(9,1,0)                            # Vector de terminos independientes
AB <- cbind(A,b)                         # Matriz ampliada    
AB
qr(A)$rank==qr(AB)$rank                  # Rango
qr(A)$rank==3
solve(A,b)                               # Resuelve las ecuaciones

solution <- c(1,2,3)
A %*% solution == b                      # Comprobando la solucion sea correcta

install.packages("matlib")               # Paquete para visualizar y calcular
library(matlib)

A <- rbind(c(2,2),c(-1,1))
b <- c(1,2)

AB <- cbind(A,b)
AB
showEqn(A,b)

R(A)
R(AB)
all.equal(R(A),R(AB))
                


#Representación de sistemas con R
# Resolver un sistema de dos ecuaciones y dos incognitas
Solve(A,b,fractions = T) # Resuelve las ecuaciones
plotEqn(A,b)             # dibuja la solucion
points(-3/4,5/4, col="red",pch=19) # dibuja la solucion de color turquesa


# Resolver un sistema de tres ecuaciones y dos incognitas
Odin <- rbind(c(4,2),c(1,-2),c(3,4))  # Asignas una matriz 
Eli <- c(3,2,1)                      # Vector de terminos independientes
showEqn(Odin,Eli)
plotEqn(Odin,Eli)
Solve(Odin,Eli)
points(1,-0.5, col="pink",pch=19)


# Resolver un sistema de tres ecuaciones con tres incognitas
A <- rbind(c(1,1,2),c(2,4,-3),c(3,6,-5))  # Matriz de coeficientes
b <- c(9,1,0)                             # Vector de terminos independientes 

showEqn(A,b)
Solve(A,b)
plotEqn3d(A,b,xlim = c(-3,3), ylim = c(0,6))   # Grafico en 3d, con limites de representacion grafica


# Multiplicar un vector por una matriz
i <- c(1,0)
j <- c(0,1) 
m <- rbind(c(2,2), c(-1,3))

z <- (3*i) + (2*j)
m %*% z


i <- c(3,2)
m <- rbind(c(2,2), c(-1,3))
n <- rbind(c(2,2), c(-1,3))

i*(m%*%n)

# 
m1 <- rbind(c(0,-1), c(1,0))
v1 <-   c(-1,1) 
m2 <- m1 %*% v1
(1 * m2) + (1 * m2)

#
m1 <- rbind(c(-1,0),c(0,-1))
w <- c(-1,-1)
v1 <- c(1,1)
m1 * v1
-1* c(0,1) + 1 *c(-1,0)
