class CheckList < ActiveRecord::Base
  attr_accessible :description, :location, :title, :user_id, :items, :subtype

  belongs_to :user
  has_many :reviews
end
