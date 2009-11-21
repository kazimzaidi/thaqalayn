# == Schema Information
#
# Table name: verse_translations
#
#  id             :integer(4)      not null, primary key
#  verse_id       :integer(4)      not null
#  translation_id :integer(4)      not null
#  translation    :text            default(""), not null
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class VerseTranslationTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
