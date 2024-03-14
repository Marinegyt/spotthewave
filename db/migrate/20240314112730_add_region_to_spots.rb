class AddRegionToSpots < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :region, :string
  end
end
