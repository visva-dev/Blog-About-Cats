class AddIndexToArticles < ActiveRecord::Migration[6.0]
  def change
    add_index :articles, :user_id
  end
end
