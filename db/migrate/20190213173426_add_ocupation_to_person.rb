class AddOcupationToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :ocupation, :string
  end
end
