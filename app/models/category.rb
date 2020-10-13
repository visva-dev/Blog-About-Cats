# frozen_string_literal: true

class Category < ApplicationRecord
  validates :category, presence: true, length: { minimum: 3, maximum: 20 }
  has_many :articles
end
