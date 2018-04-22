class AddAcceptedAtColumnToFriendships < ActiveRecord::Migration[5.1]
  def change
    add_column :friendships, :accepted_at, :datetime
  end
end
