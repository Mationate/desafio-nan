class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.references :person, foreign_key: true
      t.references :proyect, foreign_key: true
      t.integer :fee
      t.boolean :finished, default: false
      t.string :start_date
      t.string :finish_date

      t.timestamps
    end
  end
end
