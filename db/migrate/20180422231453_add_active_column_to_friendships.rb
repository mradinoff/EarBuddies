class AddActiveColumnToFriendships < ActiveRecord::Migration[5.1]
  def change
    add_column :friendships, :active, :boolean
  end
end
