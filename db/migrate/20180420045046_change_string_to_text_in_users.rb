class ChangeStringToTextInUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :email, :text
    change_column :users, :image, :text
  end
end
