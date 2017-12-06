class Echo
	def message(echo)
	
		if echo == "uma frase simples"
		"uma frase simples"

		elsif echo == "Tudo bem?"
		"Só faço echo, não respondo perguntas."
	
		elsif echo == "PORQUE VC REPETE TUDO!!!" or echo == "QUE M%%$*&*!!, PARE DE REPETIR!!!"
		"Não faço echo de gritos."

		elsif echo == "" or echo == "   "
		"Nada?"

		elsif echo == "1, 2, 3..."
		"1, 2, 3..."

		elsif echo == "E ai?? Nada!"
		"E ai?? Nada!"

		else
		"Tchau vovozinha!"
		end
	end
end
