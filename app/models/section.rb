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

class Section < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :documents
  validates_presence_of :name, :user_id

end
