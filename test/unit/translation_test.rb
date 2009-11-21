# == Schema Information
#
# Table name: translations
#
#  id         :integer(4)      not null, primary key
#  author     :string(255)     not null
#  language   :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TranslationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
