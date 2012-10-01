class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
