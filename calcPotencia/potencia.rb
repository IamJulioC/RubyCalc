#Cáculo de potencia


numeros = []

i = 1

3.times do
    puts "Digite o #{i}º número: "
    numeros.push gets.chomp.to_i
    i += 1
end

# Calcular a potência de cada número (por exemplo: elevando ao cubo)
potencias = numeros.map { |num| num ** 3 }

puts "Os números digitados foram: #{numeros}"
puts "As potências (ao quadrado) dos números são: #{potencias}"

