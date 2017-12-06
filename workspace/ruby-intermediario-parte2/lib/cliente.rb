class Cliente
  attr_reader :nome, :sobrenome, :cpf
  def initialize(nome: nome, sobrenome: sobrenome, cpf: cpf)
    @nome = nome
    @sobrenome = sobrenome
    @cpf = cpf
  end
#-------------------------------------------
  def tratamento=(trat)
    @tratamento = "#{trat}"
  end
  def tratamento
    @tratamento
  end
#-------------------------------------------
  def nome_completo
      if(@tratamento)
        "#{@tratamento} #{@nome} #{@sobrenome}"
      else
        "#{@nome} #{@sobrenome}"
      end
    end
end
