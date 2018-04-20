class ChangeStringToTextInVenues < ActiveRecord::Migration[5.1]
  def change
    change_column :venues, :url, :text
    change_column :venues, :address, :text
  end
end
