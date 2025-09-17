using Plots

# Dados
x = 0:0.1:10
y = sin.(x)

# Plotando
plot(x, y, label="Seno(x)", lw=2, color=:blue)
scatter!(x, y, label="Pontos", color=:red)

# Título e rótulos
title!("Exemplo de Figura em Julia")
xlabel!("Eixo X")
ylabel!("Eixo Y")
