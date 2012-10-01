class Fabrica < ActiveRecord::Base
  attr_accessible :correo_electronico, :direccion, :nombre_comercial, :razon_social, :representante, :ruc, :telefono
  has_many :productos, :dependent => :destroy
end
