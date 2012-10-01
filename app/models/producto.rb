class Producto < ActiveRecord::Base
  attr_accessible :color, :descripcion, :genero, :image, :nombre, :precio_unitario, :precio_venta, :precio_mayor, :talla
  
  has_many :catalogoproductos
  has_many :catalogos, :through => :catalogoproductos
  
  has_many :lineapedidos
  has_many :pedidos, :through => :lineapedidos
  
  
  belongs_to :fabrica
    
  validates :image,  :presence => true

  mount_uploader :image, ImageUploader  
end
