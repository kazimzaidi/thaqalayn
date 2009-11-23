# == Schema Information
#
# Table name: documents
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)     not null
#  user_id    :integer(4)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :sections, :order => 'position', :list => true
  validates_presence_of :title, :user_id



end
