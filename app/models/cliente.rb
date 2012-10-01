class Cliente < ActiveRecord::Base
  attr_accessible :apellido_materno, :apellido_paterno, :correo_electronico, :direccion, :nombres, :telefonos
  has_many :pedidos
end
