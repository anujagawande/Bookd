# == Schema Information
#
# Table name: discussions
#
#  id         :integer          not null, primary key
#  message    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :integer
#  person_id  :integer
#  user_id    :integer
#
# Indexes
#
#  index_discussions_on_book_id    (book_id)
#  index_discussions_on_person_id  (person_id)
#  index_discussions_on_user_id    (user_id)
#

#
# Author: Anuja

class Discussion < ApplicationRecord

    has_many :comments,
        dependent: :destroy
  
    belongs_to :book
    belongs_to :user
  
    validates :message, :presence => {message: "Discussion content is required."}
    validates :title,  presence: true, length: { maximum: 50, message: "Discussion title is required and must be less than 50 characters." }
end
