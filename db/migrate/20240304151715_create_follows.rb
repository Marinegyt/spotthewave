class CreateFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.references :follower, null: false
      t.references :followed, null: false

      t.timestamps
    end
  end
end
