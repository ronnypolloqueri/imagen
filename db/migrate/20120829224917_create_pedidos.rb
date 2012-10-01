class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :fecha_pedido
      t.integer :cantidad
      t.float :precio_pedido
      t.references :cliente

      t.timestamps
    end
    add_index :pedidos, :cliente_id
  end
end
