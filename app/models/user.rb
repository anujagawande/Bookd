# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  age             :integer
#  career          :string
#  fav_genre       :string
#  hobbies         :text
#  profile_rating  :integer
#  recommendations :text
#  suggested       :text
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  bookClub_id     :integer
#  person_id       :integer
#
# Indexes
#
#  index_users_on_bookClub_id  (bookClub_id)
#  index_users_on_person_id    (person_id)
#
#Author: Anuja

class User < ApplicationRecord

    has_one_attached :picture, dependent: :destroy
    
    has_many :comments,
        dependent: :destroy

    belongs_to :bookClub,
        optional: true
    has_many :discussions
    #belongs_to :bookClub
    
    belongs_to :person,
        optional: true

    validates :age, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 100, message: "Age is required." }
    validates :career, presence: true, inclusion: { in: %w(IT HealthCare Education SocialServices Art Communications
                                                           Transportation Management Business Finance Architecture
                                                           Engineering Science), message: "Career is required. Please choose one."}
    validates :fav_genre, presence: true, inclusion: { in: %w(Fiction Satire Drama Action Romance Mystery Horror SelfHelp Health Travel Childrens Religion Spirituality Science History Math Anthology Poetry Encyclopedias Dictionaries Comics Art Cookbooks Diaries Journals Series Trilogy Biographies Autobiographies Fantasy)}
    validates :hobbies, :presence => {message: "Hobbies is required."}
    validates :profile_rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "Profile rating is required."}

end
