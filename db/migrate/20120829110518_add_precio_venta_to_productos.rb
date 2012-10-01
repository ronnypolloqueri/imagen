class AddPrecioVentaToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :precio_venta, :float
  end
end
