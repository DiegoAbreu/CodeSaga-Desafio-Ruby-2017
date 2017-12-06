class ContaCorrente
  attr_accessor :titular, :limite, :saldo, :numero

  def initialize(numero: numero, titular: titular, saldo: saldo, limite: limite)
    @numero = numero
    @titular = Cliente.new(nome: titular)
    @saldo = saldo
    @limite = limite
  end

  def depositar(valor)
    @saldo += valor -0.10
  end

  def atualizar
  end
end
