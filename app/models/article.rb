class Article < ApplicationRecord
  validates_presence_of :title, length: { minimum: 3, maximum: 20 }
  validates_presence_of :content, length: { minimum: 250, maximum: 3500 }
  validates_presence_of :image 
  belongs_to :category
  belongs_to :user
  has_many :likes, dependent: :destroy
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
