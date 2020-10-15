class Category < ApplicationRecord
  validates :category, presence: true, length: { minimum: 3, maximum: 20 }
  has_many :articles
  belongs_to :user
end
