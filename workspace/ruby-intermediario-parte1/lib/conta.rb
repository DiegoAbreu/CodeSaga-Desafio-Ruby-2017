class Conta
  def initialize(data = {numero: numero, titular: titular,
    saldo: saldo, limite: limite})
    @numero = data[:numero]
    @titular = Cliente.new(data[:titular])
    @saldo = data[:saldo]
    @limite = data[:limite]
  end

  def numero
    @numero
  end

  def titular
    @titular
  end

  def saldo
    @saldo
  end

  def limite
    @limite
  end

  def sacar(saque)
      if saque > (@saldo + @limite)
        false
      else
        @saldo -= saque
      end
  end

  def depositar(deposito)
      @saldo += deposito
  end

  def no_limite?
      if @saldo < @limite
        true
      end
    end

  attr_reader :number
  def ==(conta)
    @number == conta.number
  end

  def transfere(conta, valor)
    if(sacar(valor))
      conta.depositar(valor)
    else
      false
    end
  end
end
