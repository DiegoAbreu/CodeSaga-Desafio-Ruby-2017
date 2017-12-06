class Quadrados
	require 'prime'
	def initialize(valor)
		@primos = Prime.first(valor)
	end

	def quadrado_da_soma
		@matematica = @primos.sum ** 2
	end

	def soma_dos_quadrados
		matematica = Array.new
		@primos.each do |p|
			matematica.push(p ** 2)
		end
		@matematica = matematica.sum
	end

	def diferenca
		@matematica = quadrado_da_soma - soma_dos_quadrados
	end
end
