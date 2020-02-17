class AddTareaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tarea_id, :integer
  end
end
