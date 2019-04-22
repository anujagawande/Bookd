# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  message       :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  discussion_id :integer
#  person_id     :integer
#  user_id       :integer
#
# Indexes
#
#  index_comments_on_discussion_id  (discussion_id)
#  index_comments_on_person_id      (person_id)
#  index_comments_on_user_id        (user_id)
#

class Comment < ApplicationRecord

    belongs_to :user

    belongs_to :discussion

    validates :message, presence: true, length: { maximum: 1000, message: "Comment is required and must be less than 1000 characters."}

    #update profile rating 
    after_save :update_profile_rating

    def update_profile_rating
        user.increment!(:profile_rating)
    end

end
