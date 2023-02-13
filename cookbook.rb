def bem_vindo #define o método
    puts "Bem-vindo ao cookbook, sua rede social de receitas!"
end

def menu
    puts "[1] Cadastre sua receita agora mesmo!"
    puts "[2] Receitas cadastradas!"
    puts "[3] Sair"
    puts
    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso! "
    puts
    return { nome: nome, tipo: tipo }
end

def imprimir_receitas (r)
    puts "====== Receitas Cadastradas ======"
        r.each do |receita| 
            puts "#{receita[:nome]} - #{receita[:tipo]}" #utilizamos o hash para juntar as informaçoes wue wueremos
        end 
        #forma ruby mais completa, abaixo mais resumida
         #   puts receitas           # percorre o array receitas, para cada item receita, chamar |receita| e "adicionar no bloco"
                                   # também poderiamos usar somente "puts receitas" pois iria fazer o mesmo papel do bloco each

end

bem_vindo() #chama o metodo

receitas = []

opcao = menu()


while(opcao != 3) do
    if(opcao == 1)
    receitas << inserir_receita()
        
    elsif(opcao == 2) 
        imprimir_receitas(receitas)
    else
        puts "Opção inválida, digite outra opção"
    
    end
    
    opcao = menu()

end
puts "Obrigada por usar o Cookbook, te vejo em breve! :)"
