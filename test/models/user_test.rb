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

require 'test_helper'

class UserTest < ActiveSupport::TestCase


  #validates everything in 'one'
  test "User should be valid" do
    one = users(:one)
    assert one.valid?
  end

  #valid age
  test "Age should be valid" do
    one = users(:one)
    one.age = 18
    assert one.valid?
  end

  #violates age must be present 
  test "Age must be present" do
    one = users(:one)
    one.age = nil
    assert_not one.valid?
  end

  #violates age must be an integer 
  test "Age must be an integer" do
    one = users(:one)
    one.age = "twenty"
    assert_not one.valid?
  end

  #violates age must be an integer between 0 and 100
  test "Age must be an integer between 0 and 100" do
    one = users(:one)
    one.age = 110.1
    assert_not one.valid?
  end

  #valid career
  test "Career should be valid" do
    one = users(:one)
    one.career = "IT"
    assert one.valid?
  end

  #violates career must be present 
  test "Career must be present" do
    one = users(:one)
    one.career = nil
    assert_not one.valid?
  end

  #violates career must be included in the list
  test "Career must be from the included list" do
    one = users(:one)
    one.career = "Software Developer"
    assert_not one.valid?
  end

  #valid favorite genre
  test "Fav genre should be valid" do
    one = users(:one)
    one.fav_genre = "History"
    assert one.valid?
  end

  #violates fav genre must be present 
  test "Fav genre must be present" do
    one = users(:one)
    one.fav_genre = nil
    assert_not one.valid?
  end

  #violates fav genre must be included in the list
  test "Fav genre must be from the included list" do
    one = users(:one)
    one.fav_genre = "Developer"
    assert_not one.valid?
  end

  #valid hobbies
  test "Hobbies should be valid" do
    one = users(:one)
    one.hobbies = "History"
    assert one.valid?
  end

  #violates hobbies must be present 
  test "Hobbies must be present" do
    one = users(:one)
    one.hobbies = nil
    assert_not one.valid?
  end

  #valid profile rating
  #test "Profile rating should be valid" do
  #  one = users(:one)
   # one.profile_rating = 20
    #assert one.valid?
  #end

  #violates profile rating must be an integer 
  #test "Profile rating must be an integer" do
  #  one = users(:one)
  #  one.profile_rating = "two"
  #  assert_not one.valid?
  #end

  #violates profile rating must be 0 or greater
  #test "Profile rating must be an integer 0 or greater" do
  #  one = users(:one)
  #  one.profile_rating = -1
  #  assert_not one.valid?
  #end

  #valid suggested
  test "Suggested should be valid" do
    one = users(:one)
    one.suggested = "The Mocking Bird"
    assert one.valid?
  end

end
