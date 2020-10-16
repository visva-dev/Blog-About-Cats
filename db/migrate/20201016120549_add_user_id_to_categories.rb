class AddUserIdToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :user_id, :integer
  end
end
