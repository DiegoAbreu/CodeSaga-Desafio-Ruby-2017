class ContaPoupanca
  attr_accessor :titular, :saldo, :numero

  def initialize(numero: numero, titular: titular, saldo: saldo)
    @numero = numero
    @titular = Cliente.new(nome: titular)
    @saldo = saldo
  end

  def depositar(valor)
    @saldo += valor
  end

  def atualizar(juros)
    @saldo *= (1 + juros)
  end

end
