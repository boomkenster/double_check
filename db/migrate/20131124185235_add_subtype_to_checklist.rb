class AddSubtypeToChecklist < ActiveRecord::Migration
  def change
    add_column :check_lists, :subtype, :string
  end
end
