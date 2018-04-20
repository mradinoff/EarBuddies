class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.datetime :date
      t.integer :venue_id
      t.string :ticket_url
      t.string :genre
      t.string :image

      t.timestamps
    end
  end
end
