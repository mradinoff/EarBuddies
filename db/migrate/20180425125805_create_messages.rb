class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.text :user_name
      t.text :event_name
      t.text :participants, array: true

      t.timestamps
    end
  end
end
