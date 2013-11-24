class CreateReplaces < ActiveRecord::Migration
  def change
    create_table :replaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
