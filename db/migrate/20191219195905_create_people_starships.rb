class CreatePeopleStarships < ActiveRecord::Migration[6.0]
  def change
    create_table :people_starships do |t|
      t.references :person, null: false, foreign_key: true
      t.references :starship, null: false, foreign_key: true
    end
  end
end
