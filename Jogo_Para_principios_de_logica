def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def pede_dificuldade
    puts "Escolha um nivel de dificuldade entre 1 e 5"
    dificuldade = gets.to_i
    if dificuldade == 1
        puts "nivel #{dificuldade} fracote"
    else
        puts "nivel #{dificuldade} corajoso"
    end
end

def sorteia_numero_secreto(dificuldade)
    case dificuldade
    when 1
        maximo = 20
    when 2
        maximo = 50
    else
        maximo = 100
    end
    puts "Escolhendo numero_secreto"
    sorteado = rand(maximo) + 1  #para cortar o 0
    puts "Escolido boa sorte"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa  #{tentativa}   de   #{limite_de_tentativas}"
    puts "Chutes até agora:   #{chutes}"
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou #{chute}"
    chute.to_i
end


def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou!"
        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
    false
end




def joga(nome, dificuldade)
    numero_secreto = sorteia_numero_secreto dificuldade

    pontos_ate_agora = 1000

    limite_de_tentativas = 5
    chutes = []


    for tentativa in 1..limite_de_tentativas

        chute = pede_um_numero chutes, tentativa, limite_de_tentativas
        chutes << chute


        if nome == "Marcos"
            puts "Acertou!!"
            break
        end

        pontos_a_perder = (chute - numero_secreto) / 2.0
        pontos_ate_agora -= pontos_a_perder

        if verifica_se_acertou numero_secreto, chute
            break
        end
    puts "Seus pontos são #{pontos_ate_agora}"
    end
end

def quer_jogar
    puts "deseja jogar novamente?(S/N)"
    quero_jogar = gets.strip
    quero_jogar.upcase == "S"
end
nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
    joga nome, dificuldade
    if !quer_jogar # usamos o ! para quando o bool retorna false ou seja if quer_jogar igual a false
        break
    end
    
end
