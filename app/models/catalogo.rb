class Catalogo < ActiveRecord::Base
  attr_accessible :descripcion, :fecha_elaboracion, :titulo_catalogo

  has_many :catalogoproductos
  has_many :productos, :through => :catalogoproductos
  
  validates :titulo_catalogo,  :presence => true
  validates :descripcion,  :presence => true

  
end
