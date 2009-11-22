# == Schema Information
#
# Table name: chapters
#
#  id           :integer(4)      not null, primary key
#  index        :integer(4)
#  arabic_name  :string(255)
#  verse_count  :integer(4)
#  start        :integer(4)
#  trans_name   :string(255)
#  english_name :string(255)
#  revealed_in  :string(255)
#  order        :integer(4)
#  rukus        :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

class Chapter < ActiveRecord::Base

  has_many :verses

  def friendly_name
    "#{index}: #{arabic_name} (#{trans_name}) - #{english_name}"
  end
end
