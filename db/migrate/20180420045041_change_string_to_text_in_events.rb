class ChangeStringToTextInEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :ticket_url, :text
    change_column :events, :image, :text
  end
end
