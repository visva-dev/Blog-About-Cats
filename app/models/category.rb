class Category < ApplicationRecord
  validates :category, presence: true, length: { minimum: 3, maximum: 20 }
  has_many :articles, dependent: :destroy
  belongs_to :user
end
