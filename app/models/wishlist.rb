class Wishlist < ActiveRecord::Base
  attr_accessible :description, :public, :items, :movies, :title

  belongs_to :user
  has_many :items
  has_many :movies, :through => :items
end
