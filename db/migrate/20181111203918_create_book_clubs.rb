class CreateBookClubs < ActiveRecord::Migration[5.2]
  def change
    create_table :book_clubs do |t|
      t.string :name
      t.text :members
      t.text :description
      t.date :meet_date
      t.string :location

      t.timestamps
    end
  end
end
