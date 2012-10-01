class Lineadepedido < ActiveRecord::Base
  attr_accessible :cantidad, :precio, :pedido_id, :producto_id  
  belongs_to :pedido
  belongs_to :producto
end
