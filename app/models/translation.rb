# == Schema Information
#
# Table name: translations
#
#  id         :integer(4)      not null, primary key
#  author     :string(255)     not null
#  language   :string(255)     not null
#  fullname   :string(255)     not null
#  created_at :datetime
#  updated_at :datetime
#

class Translation < ActiveRecord::Base
  validates_presence_of :author, :language, :fullname
  has_many :verse_translations
end
