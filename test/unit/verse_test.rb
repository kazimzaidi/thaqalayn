# == Schema Information
#
# Table name: verses
#
#  id         :integer(4)      not null, primary key
#  chapter_id :integer(4)
#  ayah_index :integer(4)
#  text       :text
#

require 'test_helper'

class VerseTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
