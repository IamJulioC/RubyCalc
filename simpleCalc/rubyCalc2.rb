def realizar_operacao(operador, num1, num2)
    case operador
    when '+'
      num1 + num2
    when '-'
      num1 - num2
    when '*'
      num1 * num2
    when '/'
      raise 'Divisão por zero' if num2 == 0
      num1 / num2
    else
      raise 'Operador inválido'
    end
  end
  
  loop do
    puts 'Selecione uma opção:'
    puts '1 - Soma (+)'
    puts '2 - Subtração (-)'
    puts '3 - Multiplicação (*)'
    puts '4 - Divisão (/)'
    puts '0 - Sair'
    print 'Digite sua escolha: '
  
    opcao = gets.chomp
  
    case opcao
    when '1', '2', '3', '4'
      operador = ['+', '-', '*', '/'][opcao.to_i - 1]
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_i
      print "Digite o segundo número: "
      num2 = gets.chomp.to_i
  
      begin
        resultado = realizar_operacao(operador, num1, num2)
        puts "Resultado: #{resultado}"
      rescue ZeroDivisionError
        puts 'Erro: Divisão por zero'
      rescue RuntimeError => e
        puts "Erro: #{e.message}"
      end
    when '0'
      break
    else
      puts 'Opção inválida'
    end
  end