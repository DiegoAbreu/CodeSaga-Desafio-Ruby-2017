class ArrayUtils
  def self.compara(lista1, lista2)
  	lista1.to_set == lista2.to_set && lista1.size == lista2.size
  end

  def self.divisiveis(d1, d2)
  	div1 =(1..50).select do |i|
  		i % d1 == 0 && i % d2 == 0
  	end
  	div2 =(1..50).select do |i|
  		i % d1 == 0
  	end
  	div3 =(1..50).select do |i|
  		i % d2 == 0
  	end
  	[div1, div2, div3 ]
  end

  def self.soma(list)
  	list.inject(:+)
  end

  def self.combinar(x, y)
  	x.product(y)
  end
end
