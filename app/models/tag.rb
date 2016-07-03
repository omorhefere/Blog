class Tag < ActiveRecord::Base
  # associaions between posts and tags.
  has_many :taggings
  has_many :articles, through: :taggings
  has_many :portfolios, through: :taggings
end
