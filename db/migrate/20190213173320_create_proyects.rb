class CreateProyects < ActiveRecord::Migration[5.2]
  def change
    create_table :proyects do |t|
      t.string :name
      t.text :description
      t.integer :budget

      t.timestamps
    end
  end
end
