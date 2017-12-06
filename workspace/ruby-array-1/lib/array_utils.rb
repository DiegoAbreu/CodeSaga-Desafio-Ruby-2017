class ArrayUtils
  	def self.multiplos(qtd, multiplo)
  	(1..qtd).map {|valor| valor * multiplo}
  	end

  	def self.tabuada(num)
  	tabuada = []
  	for x in 1..num
 		linhas = []
 	for y in 1..10
 		linhas << x * y
 	end
 	tabuada << linhas
 	end
 	tabuada
	end
	
	def self.ultimo(lista)
	lista.pop
	end
end



