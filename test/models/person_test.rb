# == Schema Information
#
# Table name: people
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_people_on_email                 (email) UNIQUE
#  index_people_on_reset_password_token  (reset_password_token) UNIQUE
#
#Author: Anuja

require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test "should be valid person" do
    one = people(:one)
    assert one.valid?
  end

end
