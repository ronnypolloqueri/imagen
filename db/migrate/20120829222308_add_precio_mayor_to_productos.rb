class AddPrecioMayorToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :precio_mayor, :float
  end
end
