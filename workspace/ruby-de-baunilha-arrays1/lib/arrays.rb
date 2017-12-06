class Arrays
  def self.converte_impares_por(lista, numero)
    nums_impar = lista.select(&:odd?)
    conv = nums_impar.map { |x| x * numero }
    [nums_impar, conv]
  end

  def self.converte_pares_por(lista, numero)
    nums_par = lista.select(&:even?)
    conv = nums_par.map { |x| x * numero }
    [nums_par, conv]
  end
end
