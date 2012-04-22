class Movie < ActiveRecord::Base
  attr_accessible :imdb_ref, :title, :year

  has_and_belongs_to_many :genres
  has_many :items
  has_many :wishlists, :through => :items
end
