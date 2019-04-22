class AddBookRefToDiscussions < ActiveRecord::Migration[5.2]
  def change
    add_reference :discussions, :book, foreign_key: true
  end
end
