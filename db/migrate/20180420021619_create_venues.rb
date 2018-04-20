class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :location
      t.string :name
      t.string :url
      t.string :address

      t.timestamps
    end
  end
end
