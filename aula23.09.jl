typeof(10); 
typeof(10) #Esse imprimi, mas o de cima não por causa do ";"
typeof(1/3)
typeof(1//3)
1//3+1//4 #Aqui ele está calculando a raíz resultante, quando se coloca "//" ele trabalha com o racional, na forma de fração
error = 5e-10 # Equivale à 5*10^-10
error::Float64 = 10.0 #Aq estou tipando q essa variável tem que ser Float de 64bits

ariane5::Int8 = 127
bitstring(127) 

if (4<3)
  print("Sou menor")
else
  print("Sou maior")
end

iter = 0;
while(iter<10)
  println(iter);
  global iter+=1;
end
iter

for i in 1:5
  println(i);
end

function g(x, y=1)
  return x^2-y^2
end

g(2, 0)
g(2)


function ar(x, y=5) #y=5 é para quando não há valor para y informado, nesse caso teremos que o valor de y será 5
  return round(x, digits = y)
end

ar(1/3)
ar(1/3, 9)

h(x) = sin(x)+1  #Função em uma única linha, muito útil para funções matemáticas
h(3)

f = x -> x+1 #Função anônima atribuindo a uma variável
f(2)

(x -> x+2)(3)  #Função anônima, mas nesse caso sem atribuir a uma variável

g(x) = x^2-2x-6
h(x) = x^3-2x-6
function bissecao(func, a, b)
  m = (a+b)/2
  return func(m);
end

bissecao(g, 3, 4)
bissecao(h, 3, 4)
bissecao(x->x+1, 3, 4)

function newton(f, df, x₀, iter=3)
  # xₙ₊₁ = xₙ - f(xₙ)/df(xₙ);
  x= x₀;
  for i in 1:iter
    x = x - f(x)/df(x);
  end
  return x;
end

newton(x-> x^2-2x-6, x-> 2x-2, 6, 10)