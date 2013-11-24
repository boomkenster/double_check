class Review < ActiveRecord::Base
  attr_accessible :body, :check_list_id, :title, :user_id

  belongs_to :check_list
  belongs_to :user
end
