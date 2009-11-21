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

class VerseTranslation < ActiveRecord::Base
  validates_presence_of :verse_id, :translation_id, :translation
  belongs_to :verse
  belongs_to :translation
end
