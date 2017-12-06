class Calculadora
  def soma(n1, n2)
  n1 + n2
  end

  def subtracao(n1, n2)
  n1 - n2
  end

  def multiplicacao(n1, n2)
  n1 * n2
  end

  def divisao(n1, n2)
  n1 / n2
  rescue ZeroDivisionError
  0
  end

  def calcular(n1, n2, op)
  [n1, n2].inject(op)
  end
end
