class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fav_genre
      t.integer :age
      t.text :hobbies
      t.string :career
      t.text :recommendations
      t.text :suggested
      t.integer :profile_rating

      t.timestamps
    end
  end
end
