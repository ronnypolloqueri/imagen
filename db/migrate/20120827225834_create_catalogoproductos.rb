class CreateCatalogoproductos < ActiveRecord::Migration
  def change
    create_table :catalogoproductos do |t|
      t.references :producto
      t.references :catalogo

      t.timestamps
    end
    add_index :catalogoproductos, :producto_id
    add_index :catalogoproductos, :catalogo_id
  end
end
