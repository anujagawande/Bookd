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

require 'test_helper'

class DiscussionTest < ActiveSupport::TestCase

  test "Discussion should be valid" do
    one = discussions(:one)
    assert one.valid?
  end

  #Discussion must have a parent book 
  test "Discussion must have parent book" do
    one = discussions(:one)
    one.book_id = nil
    assert_not one.valid?
  end

  #valid message
  test "Message should be valid" do
    one = discussions(:one)
    one.message = "Good book"
    assert one.valid?
  end

  #violates message must be present 
  test "Message must be present" do
    one = discussions(:one)
    one.message = nil
    assert_not one.valid?
  end

  #valid title
  test "Title should be valid" do
    one = discussions(:one)
    one.title = "Good book"
    assert one.valid?
  end

  #violates title must be present 
  test "Title must be present" do
    one = discussions(:one)
    one.title = nil
    assert_not one.valid?
  end

end
