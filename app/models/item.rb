class Item < ActiveRecord::Base
  attr_accessible :check_list_id, :description, :name

  belongs_to :check_list
end
