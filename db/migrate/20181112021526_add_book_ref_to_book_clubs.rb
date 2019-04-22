class AddBookRefToBookClubs < ActiveRecord::Migration[5.2]
  def change
    add_reference :book_clubs, :book, foreign_key: true
  end
end
