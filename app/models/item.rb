class Item < ActiveRecord::Base
  attr_accessible :owned, :owned_on, :sort_order

  belongs_to :movie
  belongs_to :wishlist
end
