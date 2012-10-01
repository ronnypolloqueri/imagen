class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :telefonos
      t.string :correo_electronico
      t.string :direccion

      t.timestamps
    end
  end
end
