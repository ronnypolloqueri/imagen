class CreateLineadepedidos < ActiveRecord::Migration
  def change
    create_table :lineadepedidos do |t|
      t.integer :cantidad
      t.float :precio
      t.references :pedido
      t.references :producto

      t.timestamps
    end
    add_index :lineadepedidos, :pedido_id
    add_index :lineadepedidos, :producto_id
  end
end
