class AddBookClubRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :bookClub, foreign_key: true
  end
end
