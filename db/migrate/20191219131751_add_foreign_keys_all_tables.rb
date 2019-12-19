class AddForeignKeysAllTables < ActiveRecord::Migration[6.0]
  def change
    add_reference :people, :planet
    add_reference :people, :specie
    add_reference :species, :planet
  end
end
