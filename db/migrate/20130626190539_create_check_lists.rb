class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :user_id
      t.string :items

      t.timestamps
    end
  end
end
