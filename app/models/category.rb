class Category < ApplicationRecord
  has_many :articles

  validates_presence_of :category
end
