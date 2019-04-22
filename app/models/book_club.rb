# == Schema Information
#
# Table name: book_clubs
#
#  id          :integer          not null, primary key
#  description :text
#  location    :string
#  meet_date   :date
#  members     :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  book_id     :integer
#
# Indexes
#
#  index_book_clubs_on_book_id  (book_id)
#
#Author: Anuja

class BookClub < ApplicationRecord

    has_many :users
    
    belongs_to :book,
        optional: true
    
    validates :description, :presence => {:message => "Description must be present"}
    validates :location, :presence => {:message => "Location must be present"}
    validates :meet_date, :presence => {:message => "Book Club meeting days and time is required." }
    validates :members, :presence => {:message => "Book Club must have members." }
    validates :name, presence: true, uniqueness: true, length: { maximum: 25, message: "Book Club name is required and must be less than 25 characters." }

end
