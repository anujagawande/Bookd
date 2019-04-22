# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  description :text
#  genre       :string
#  rating      :integer
#  review      :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
#Author: Anuja

class Book < ApplicationRecord
    
    has_many :discussions,
        dependent: :destroy

    has_one :bookClub,
        dependent: :destroy

    validates :description, :presence => {:message => "Description must be present"}
    validates :genre, presence: true, inclusion: { in: %w(Fiction Satire Drama Action Romance Mystery Horror SelfHelp Health Travel Childrens Religion Spirituality Science History Math Anthology Poetry Encyclopedias Dictionaries Comics Art Cookbooks Diaries Journals Series Trilogy Biographies Autobiographies Fantasy) }
    validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10, message: "Book rating is required."}
    validates :review, allow_blank: true, length: { maximum: 1000, message: "Book review must be less than 1000 characters" }
    validates :title, presence: true, length: { maximum: 100, message: "Title is required and must be less than 100 characters." }

    def self.search(search)
        where("title LIKE ? OR genre LIKE ? OR rating LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
