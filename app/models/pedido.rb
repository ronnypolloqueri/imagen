class Pedido < ActiveRecord::Base

  attr_accessible :cantidad, :fecha_pedido, :precio_pedido, :cliente_id  
  
  has_many :lineapedidos
  has_many :productos, :through => :lineapedidos
  
  belongs_to :cliente
    
end
