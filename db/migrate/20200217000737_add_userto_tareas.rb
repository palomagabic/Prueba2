class AddUsertoTareas < ActiveRecord::Migration[5.2]
  def change
    add_reference :tareas, :user, index: true
  end
end
