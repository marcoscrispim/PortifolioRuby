require_relative 'ui'

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta

    erros = 0 
    chutes = []
    pontos_ate_agota = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        if chutes.include? chute
            avisa_chute_efetuado chute # ex de func com parametro chute sem parenteses
            next
        end

        chutes << chute

        

        chutou_uma_letra = chute.size == 1
        if chutou_uma_letra
            letra_procurada = chute[0]
            total_encontrado = palavra_secreta.count letra_procurada #isso é igual a pedir para o count contar o numero de apariçõe s da letra_producara
            if total_encontrado == 0  
                avisa_letra_nao_encontrada
                erros += 1
            else
                avisa_letra_encontrada
                
            end
            

        else
            acertou = chute == palavra_secreta
            if acertou
                avisa_acertou_palavra
                pontos_ate_agota += 100
                break
            else
                avisa_errou_palavra
                pontos_ate_agota -= 30
                erros += 1
            end
        end

    end

    avisa_quantos_pontos_ganhou pontos_ate_agota
end

nome = da_boas_vindas
palavra_secreta = escolhe_palavra_secreta

loop do
    joga nome
    if jogar_novamente
        break
    end
    
end