require 'spec_helper'

describe Conta do
  it "deveria conseguir criar um objeto do tipo Conta" do
    numero = "2303-2"
    titular = "Jose da Silva"
    saldo = 1000.10
    limite = 500
    conta = cria_conta
    expect(conta.numero).to eq numero
    expect(conta.titular.getTitular).to eq titular
    expect(conta.limite).to eq limite
    expect(conta.saldo).to eq saldo
  end

  it "deveria ter um novo saldo quando houver um saque" do
    conta = cria_conta
    saldo_anterior = conta.saldo
    saque = 200
    conta.sacar(saque)
    expect(conta.saldo).to eq(saldo_anterior - saque)
  end

  it "deveria ter um novo saldo depois de um deposito" do
    conta = cria_conta
    saldo_anterior = conta.saldo
    deposito = 500
    conta.depositar(deposito)
    expect(conta.saldo).to eq(saldo_anterior + deposito)
  end

  it "deveria retorna false quando não for possível sacar" do
    conta = cria_conta
    saque = 2000
    expect(conta.sacar(saque)).to eq false
  end

  it "deveria deixar a conta negativa quando o saque usar o limite" do
    conta = cria_conta
    saque = 1500
    saldo_anterior = conta.saldo
    conta.sacar(saque)
    expect(conta.saldo).to eq(saldo_anterior - saque)
  end

  it "deveria mostrar que a conta está usando limite" do
    conta = cria_conta
    saque = 1500
    saldo_anterior = conta.saldo
    conta.sacar(saque)
    expect(conta).to be_no_limite
  end

  it "duas contas com mesmos dados deveriam ser iguais" do
    conta1 = cria_conta
    conta2 = cria_conta
    expect(conta1).to eq conta2
  end

  it "deveria ter novo saldo após tranferencia" do
    conta_origem = cria_conta
    saldo_anterior_origem = conta_origem.saldo
    conta_destino = cria_conta("3432-2", "Zenildo Bispo", 4000.54)
    saldo_anterior_destino = conta_destino.saldo
    valor_transferencia = 560.40
    conta_origem.transfere(conta_destino, valor_transferencia)
    expect(conta_origem.saldo).to eq(saldo_anterior_origem - valor_transferencia)
    expect(conta_destino.saldo).to eq(saldo_anterior_destino + valor_transferencia)
  end

  it "deveria ser false quando não for possivel transferir" do
    conta_origem = cria_conta
    conta_destino = cria_conta("3432-2", "Zenildo Bispo", 4000.54)
    valor_transferencia = 1560.40
    expect(conta_origem.transfere(conta_destino, valor_transferencia)).
      to eq(false)
  end

  it "titular deveria ser um Cliente" do
    # Bonus
    # altere conta para ter titular ao inves de nome
    # altere tambem os testes para que passem nesse nova versão
    # titular deveria ser um objeto do tipo Cliente
    conta = cria_conta
    expect(conta.titular).to be_a(Cliente)
  end

  def cria_conta(numero="2303-2", titular="Jose da Silva", saldo=1000.10, limite=500)
    Conta.new(numero: numero, titular: titular, saldo: saldo, limite: limite)
  end
end
