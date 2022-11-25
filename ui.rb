def avisa_chute_efetuado chute
    puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
    puts "Vocẽ errou, letra não encontrada"
end

def avisa_letra_encontrada(total_encontrado)
    puts "Letra encontrada #{total_encontrado} vezes(s)."
end

def avisa_acertou_palavra
    puts "Parabéns! acertou"
end

def avisa_errou_palavra
    puts "Parabéns! errou"
end

def da_boas_vindas
    puts "Bem vindo ao jogo da Forca"
    puts "Qual seu nome ?"    
    nome = gets.strip
    puts "\n\n\n\n" 
    puts "Começaremos o jogo #{nome}"
    nome
end

def pede_um_chute(chutes, erros)
    puts"\n\n\n"
    puts"Erros ate agora #{erros}"
    puts"chutes ate agora #{chutes}"
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    chute
end 

def escolhe_palavra_secreta
    palavra_secreta = "programador"
    puts "Palavra secreta com #{palavra_secreta.size} letras"
    palavra_secreta
end

def jogar_novamente
    puts"Quer jogar de novo ?"
    quero_jogar = gets.strip
    nao_quer_jogar = quero_jogar.upcase == "N"
end

def avisa_quantos_pontos_ganhou(pontos_ate_agota)
    puts"Você tem #{pontos_ate_agota} pontos atê agora"
end