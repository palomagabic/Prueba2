class CreateTareas < ActiveRecord::Migration[5.2]
  def change
    create_table :tareas do |t|
      t.string :nombre
      t.date :subida
      t.boolean :listo

      t.timestamps
    end
  end
end
