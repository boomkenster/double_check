class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :check_list_id

      t.timestamps
    end
  end
end
