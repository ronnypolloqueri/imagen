class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :color
      t.string :genero
      t.string :talla
      t.float :precio_unitario
      t.string :image
      t.references :fabrica

      t.timestamps
    end
    add_index :productos, :fabrica_id
  end
end
