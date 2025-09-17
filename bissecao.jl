function f(x)
  h = x^2-2x-6
  return h
end

a= 3; b=4;
iter = 0;
m = 0;

while (iter <7)
  m = (a+b)/2
  if (f(m)==0)
    break
  end
  if (f(a)*f(m)<0) # Como o sinal é diferente, isso quer dizer que a raiz está entre "a" e "m"
    b = m
  else
    a = m
  end
  iter += 1
end

print("A raiz é $m")