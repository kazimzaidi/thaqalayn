# == Schema Information
#
# Table name: sections
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)     not null
#  user_id    :integer(4)      not null
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
