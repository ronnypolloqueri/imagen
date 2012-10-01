class CreateFabricas < ActiveRecord::Migration
  def change
    create_table :fabricas do |t|
      t.string :ruc
      t.string :razon_social
      t.string :nombre_comercial
      t.string :direccion
      t.string :telefono
      t.string :correo_electronico
      t.string :representante

      t.timestamps
    end
  end
end
