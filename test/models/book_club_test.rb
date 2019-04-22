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

require 'test_helper'

class BookClubTest < ActiveSupport::TestCase

  #validates everything in 'one'
  test "Book club should be valid" do
    one = book_clubs(:one)
    assert one.valid?
  end

  #Book club must have a parent book 
  test "Book club must have parent book" do
    one = book_clubs(:one)
    one.book_id = nil
    assert_not one.valid?
  end

  #valid location
  test "Location should be valid" do
    one = book_clubs(:one)
    one.location = "Dunn Hall"
    assert one.valid?
  end

  #violates location must be present 
  test "Location must be present" do
    one = book_clubs(:one)
    one.location = nil
    assert_not one.valid?
  end

  #valid description
  test "Description should be valid" do
    one = book_clubs(:one)
    one.description = "This is the coolest book club."
    assert one.valid?
  end

  #violates description must be present
  test "Description must be present" do
    one = book_clubs(:one)
    one.description = nil
    assert_not one.valid?
  end

  #valid name
  test "Book club name should be valid" do
    one = book_clubs(:one)
    one.name = "The Book Club"
    assert one.valid?
  end

  #violates name must be present 
  test "Book name must be present" do
    one = book_clubs(:one)
    one.name = nil
    assert_not one.valid?
  end

  #violates name must be less than 25 characters
  test "Book name must be less than 25 characters" do
    one = book_clubs(:one)
    one.name = "Dunnnnnn Haaaallllllllllllllllllllllllllllllllllllllllllll"
    assert_not one.valid?
  end

  #violates book club name must be unique
  test "Book club name must be unique" do
    one = book_clubs(:one)
    two = book_clubs(:two)
    assert one.valid?
    assert two.valid?
    two.name = one.name
    assert_not two.valid?
  end

  #valid members
  test "Members should be valid" do
    one = book_clubs(:one)
    one.members = "Anuja"
    assert one.valid?
  end

  #violates members must be present 
  test "Members must be present" do
    one = book_clubs(:one)
    one.members = nil
    assert_not one.valid?
  end

  #valid meet date
  test "Meet date should be valid" do
    one = book_clubs(:one)
    one.meet_date = 2019-01-02
    assert one.valid?
  end

  #violates meet date must be present 
  test "Meet date must be present" do
    one = book_clubs(:one)
    one.meet_date = nil
    assert_not one.valid?
  end

end
