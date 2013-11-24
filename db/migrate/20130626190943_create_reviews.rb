class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :check_list_id

      t.timestamps
    end
  end
end
