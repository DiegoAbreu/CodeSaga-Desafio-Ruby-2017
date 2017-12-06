class Opinion < ActiveRecord::Base
  #opiniao com palavras politicas
  validates :body, format: {without: /Petralha/ || /Tucanos/ || /Dilma/,
     message: 'Contains political words'}
  #opiniao vazia " "
  validates :body, presence: true
  #opiniao com mais de 150 caracteres
  validates :body, length: {maximum: 150, message: 'is too long'}
end
