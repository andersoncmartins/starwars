class ChangeColumnGenderToPeople < ActiveRecord::Migration[6.0]
  def change
    change_column :people, :gender, :string
  end
end
