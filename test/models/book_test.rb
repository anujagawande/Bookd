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

require 'test_helper'

class BookTest < ActiveSupport::TestCase

 #validates everything in 'one'
  test "Book should be valid" do
    one = books(:one)
    puts one.id
    assert one.valid?
  end

  #valid description
  test "Description should be valid" do
    one = books(:one)
    one.description = "Good book"
    assert one.valid?
  end

  #violates description must be present 
  test "Description must be present" do
    one = books(:one)
    one.description = nil
    assert_not one.valid?
  end

  #valid genre
  test "Genre should be valid" do
    one = books(:one)
    one.genre = "History"
    assert one.valid?
  end

  #violates genre must be present 
  test "Genre must be present" do
    one = books(:one)
    one.genre = nil
    assert_not one.valid?
  end

  #violates genre must be from these inclusions
  test "Genre must be from inclusion list" do
    one = books(:one)
    one.genre = "Bad book"
    assert_not one.valid?
  end

  #valid rating
  test "Rating should be valid" do
    one = books(:one)
    one.rating = 3
    assert one.valid?
  end

  #violates rating must be present 
  test "Rating must be present" do
    one = books(:one)
    one.rating = nil
    assert_not one.valid?
  end

  #violates rating must be an integer between 1-10
  test "Rating must be an integer from 1-10" do
    one = books(:one)
    one.rating = 11
    assert_not one.valid?
  end

  #valid review
  test "Review should be valid" do
    one = books(:one)
    one.review = "Nice book"
    assert one.valid?
  end

  #Review can be blank
  test "Review can be blank" do
    one = books(:one)
    one.review = nil
    assert one.valid?
  end

  #violates review must be 1000 or less characters
  test "Review cannot be more than 1000 characters" do
    one = books(:one)
    one.review = "A comprehensive introduction to film history, The Film Genre Book allows the reader to create their own narrative of film through history by focusing on seven genres, highlighting a key film from each genre over a ninety-year period―sixty-three films discussed in detail. The reader can trace the developments in a particular genre over time or compare films in a particular decade from the different genres. Each case-study considers issues of historical context, representation and the close textual analysis of significant scenes. Analysing films as diverse as Bambi and A comprehensive introduction to film history, The Film Genre Book allows the reader to create their own narrative of film through history by focusing on seven genres, highlighting a key film from each genre over a ninety-year period―sixty-three films discussed in detail. The reader can trace the developments in a particular genre over time or compare films in a particular decade from the different genres. Each case-study considers issues of historical context, representation and the close textual analysis of significant scenes. Analysing films as diverse as Bambi"
    assert_not one.valid?
  end

  #valid title
  test "Title should be valid" do
    one = books(:one)
    one.title = "The Color Purple"
    assert one.valid?
  end

  #violates title must be present 
  test "Title must be present" do
    one = books(:one)
    one.title = nil
    assert_not one.valid?
  end

  #violates title can't be more than 100 characters
  test "Title can't be more than 100 characters" do
    one = books(:one)
    one.title = "Aaaaaaaaaaa cccccoooooommmmmppppprrrrreeeeennnnhhhhheeeennnnnsssssssiiiiiiiiivvvvvvvvvve introduction to film history"
    assert_not one.valid?
  end
end
