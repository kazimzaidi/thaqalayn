# == Schema Information
#
# Table name: assets
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)      not null
#  item_id    :integer(4)      not null
#  item_type  :string(255)     not null
#  asset_view :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Asset < ActiveRecord::Base
  validates_presence_of :user_id, :item_id, :item_type
  belongs_to :user
  belongs_to :item, :polymorphic => true
  has_and_belongs_to_many :sections

  def partial_directory
    item_type.tableize
  end

  def partial
    item_type.underscore
  end
end
