class User < ActiveRecord::Base
# el simbolo de menos quiere decir que necesita a active record para funcionar
	validates :name, presence: true, length: {minimum: 2}
	validates :password, presence: true, length: {minimum: 7}
	validates :email, presence: true, length: {minimum: 1}
end

#esto se escribe para darle parametros minimos a los campos que esta en el , se valida que exista y los minimos.