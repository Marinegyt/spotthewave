class AddCityToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :city, :string
    add_column :spots, :difficulty, :string
  end
end
