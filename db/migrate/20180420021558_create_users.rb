class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.text :bio
      t.string :hometown
      t.text :interests
      t.string :email
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
  end
end
