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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "Comment should be valid" do
    one = comments(:one)
    assert one.valid?
  end

  #Comment must have a parent user
  test "Comment must have parent user" do
    one = comments(:one)
    one.user_id = nil
    assert_not one.valid?
  end

  #Comment must have a parent discussion
  test "Comment must have parent discussion" do
    one = comments(:one)
    one.discussion_id = nil
    assert_not one.valid?
  end

  #valid comment message
  test "Message should be valid" do
    one = comments(:one)
    one.message = "Good book"
    assert one.valid?
  end

  #violates message must be present 
  test "Message must be present" do
    one = comments(:one)
    one.message = nil
    assert_not one.valid?
  end

  #violates message can't be more than 1000 characters"
  test "Message can't be more than 1000 characters" do
    one = comments(:one)
    one.message = "A comprehensive introduction to film history, The Film Genre Book allows the reader to create their own narrative of film through history by focusing on seven genres, highlighting a key film from each genre over a ninety-year period―sixty-three films discussed in detail. The reader can trace the developments in a particular genre over time or compare films in a particular decade from the different genres. Each case-study considers issues of historical context, representation and the close textual analysis of significant scenes. Analysing films as diverse as Bambi and A comprehensive introduction to film history, The Film Genre Book allows the reader to create their own narrative of film through history by focusing on seven genres, highlighting a key film from each genre over a ninety-year period―sixty-three films discussed in detail. The reader can trace the developments in a particular genre over time or compare films in a particular decade from the different genres. Each case-study considers issues of historical context, representation and the close textual analysis of significant scenes. Analysing films as diverse as Bambi"
    assert_not one.valid?
  end
end
