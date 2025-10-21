M1 = [2 3 4; 3 4 5]   # Matriz 2x3 - Forma 1 de criar uma matriz
M2 = [1 2
     3 4
     5 6] # Matriz 3x2 - Forma 2 de criar uma matriz

M3 = [1 2
     3 4
     5 6]'  #Matriz adjacente

myI = [1 0 0; 0 1 0; 0 0 1]

size(M1) #Quantidade de linhas e colunas -> (linhas, colunas)
size(M1, 1) #Quantidade de linhas
size(M1, 2) #Quantidade de colunas
length(M1) #Quantidade de elementos na matriz

# Matrizes pré-definidas

zeros(3, 3) #Matriz de zeros
ones(3, 2) #Matriz de uns

A = [1 2 3; 4 5 6]
B = [1 2; 3 4]

using LinearAlgebra
# Matriz identidade
Matrix(I, 3, 3)
C = B + I #I é abstrato 

A = [1 2 3; 4 5 6; 7 8 9]
A + I

C
C * C #Assim ele realmente faz a multiplicação de matrizes
C .* C #Aqui ele multiplica os elementos pelos seus correspondentes

# Acesso de elementos
 C[2, 1] #Linha 2, Coluna 1
C[1, :] #Linha completa
C[2, :] #Coluna completa
A[1:2, 1:1] #Submatriz
A[3]

#Usando o método de eliminação de Gauss na matriz

A = [2 -3 1; 1 4 2; 1 -2 1];
b = [-3; 7; -1];
C = Float64[A b]

m21 = C[2, 1]/C[1, 1]
C[2, :] = C[2, :] - m21*C[1, :]
C

m31 = C[3, 1]/C[1, 1]
C[3, :] = C[3, :] - m31*C[1, :]
C

m32 = C[3, 2]/C[2, 2]
C[3, :] = C[3, :] - m32*C[2, :]
C


#Fatoração LU

F = lu(A)

L = F.L #Matriz L
U = F.U #Matriz U

println(A ≈ L*U)

inv(A) #Inversa de a

#Testebench simples:
@time for i in 1:1000000
  inv(A)*b;
end;

@time for i in 1:1000000
  A/A;
end;
