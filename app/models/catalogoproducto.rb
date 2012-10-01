class Catalogoproducto < ActiveRecord::Base
  attr_accessible :producto_id, :catalogo_id
  belongs_to :catalogo
  belongs_to :producto
end
