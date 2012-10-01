class CreateCatalogos < ActiveRecord::Migration
  def change
    create_table :catalogos do |t|
      t.string :titulo_catalogo
      t.text :descripcion
      t.date :fecha_elaboracion

      t.timestamps
    end
  end
end
